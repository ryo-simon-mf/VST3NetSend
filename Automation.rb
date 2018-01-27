MainFile = "#{ENV['AWL_LIB_SRC']}/Scripts/Automation.rb"
if File.exist?(MainFile) then require MainFile else require_relative "Vendor/WL/Scripts/lib/Core.rb" end

class Automation

   GitRepoDirPath = ENV['PWD']
   TmpDirPath = GitRepoDirPath + "/.tmp"
   KeyChainPath = TmpDirPath + "/VST3NetSend.keychain"
   P12FilePath = GitRepoDirPath + '/Configuration/Development.p12'
   XCodeProjectFilePath = GitRepoDirPath + "/VST3NetSend.xcodeproj"
   XCodeProjectSchema = "VST3NetSend"
      
   def self.ci()
      puts "→ Downloading dependencies..."
      `git clone --branch vstsdk368_08_11_2017_build_121  https://github.com/steinbergmedia/vst3sdk.git`
      `cd vst3sdk && git submodule update --init base pluginterfaces public.sdk`
      puts "→ Preparing environment..."
      FileUtils.mkdir_p TmpDirPath
      puts Tool.announceEnvVars
      puts "→ Setting up keychain..."
      kc = KeyChain.create(KeyChainPath)
      kc.setSettings()
      kc.info()
      kc.import(P12FilePath, ENV['AWL_P12_PASSWORD'], ["/usr/bin/codesign"])
      KeyChain.setDefault(kc.nameOrPath)
      begin
         puts "→ Making build..."
         clean()
         build()
         puts "→ Making cleanup..."
         KeyChain.setDefault(KeyChain.login)
         KeyChain.delete(kc.nameOrPath)
      rescue
         KeyChain.setDefault(KeyChain.login)
         KeyChain.delete(kc.nameOrPath)
         raise
      end
   end
   
   def self.build()
      XcodeBuilder.new(XCodeProjectFilePath).build(XCodeProjectSchema)
   end
   
   def self.clean()
      XcodeBuilder.new(XCodeProjectFilePath).clean(XCodeProjectSchema)
   end
   
   def self.release()
      XcodeBuilder.new(XCodeProjectFilePath).archive(XCodeProjectSchema, "Release", true)
      apps = Dir["#{GitRepoDirPath}/**/*.xcarchive/**/*.vst3"].select { |f| File.directory?(f) }
      apps.each { |app| Archive.zip(app) }
      apps.each { |app| XcodeBuilder.validateBinary(app) }
   end
   
   def self.verify()
      if Tool.isCIServer
         return
      end
      t = Tool.new()
      l = Linter.new(GitRepoDirPath)
      h = FileHeaderChecker.new(["VST3NetSend", "WaveLabs"])
      if t.isXcodeBuild
         if t.canRunActions("Verification")
            changedFiles = GitStatus.new(GitRepoDirPath).changedFiles()
            puts "→ Checking headers..."
            puts h.analyseFiles(changedFiles)
            if l.canRunSwiftLint()
               puts "→ Linting..."
               l.lintFiles(changedFiles)
            end
         end
      else
         puts h.analyseDir(GitRepoDirPath)
         if l.canRunSwiftFormat()
            puts "→ Correcting sources (SwiftFormat)..."
            l.correctWithSwiftFormat()
         end
         if l.canRunSwiftLint()
            puts "→ Correcting sources (SwiftLint)..."
            l.correctWithSwiftLint()
         end
      end
   end
   
   def self.deploy()
      if Tool.isCIServer
         return
      end
      require 'yaml'
      assets = Dir["#{GitRepoDirPath}/**/*.xcarchive/**/*.vst3.zip"]
      releaseInfo = YAML.load_file("#{GitRepoDirPath}/Configuration/Release.yml")
      releaseName = releaseInfo['name']
      releaseDescription = releaseInfo['description'].map { |l| "* #{l}"}.join("\n")
      gh = GitHubRepo.new("vgorloff", "VST3NetSend")
      gh.release("1.0.8", releaseName, releaseDescription)
      assets.each { |f| gh.uploadReleaseAsset(f) }
   end

end