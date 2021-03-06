//
//  TerminalStyleStringFormatter.swift
//  WaveLabs
//
//  Created by Vlad Gorlov on 06.02.16.
//  Copyright © 2016 Vlad Gorlov. All rights reserved.
//

// swiftlint:disable type_name
/// - SeeAlso: [ bash:tip_colors_and_formatting - FLOZz' MISC ]( http://misc.flogisoft.com/bash/tip_colors_and_formatting )
public struct TerminalStyleStringFormatter {

   private static let escape = "\u{001B}["

   private enum ColorCode: Int {
      case Black = 0, Red, Green, Yellow, Blue, Magenta, Cyan, LightGray
      var fgColorNormal: Int { return rawValue + 30 }
      var fgColorLight: Int { return rawValue + 90 }
      static var fgColorDefault: Int { return 39 }
      var bgColorNormal: Int { return rawValue + 40 }
      var bgColorLight: Int { return rawValue + 100 }
      static var bgColorDefault: Int { return 49 }
   }

   public struct bg {
      public struct light { // swiftlint:disable:this nesting
         public static func darkGray(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Black) }
         public static func red(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Red) }
         public static func green(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Green) }
         public static func yellow(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Yellow) }
         public static func blue(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Blue) }
         public static func magenta(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Magenta) }
         public static func cyan(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Cyan) }
         public static func white(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.LightGray) }
         public static func k(_ string: String) -> String { return darkGray(string) }
         public static func r(_ string: String) -> String { return red(string) }
         public static func g(_ string: String) -> String { return green(string) }
         public static func y(_ string: String) -> String { return yellow(string) }
         public static func b(_ string: String) -> String { return blue(string) }
         public static func m(_ string: String) -> String { return magenta(string) }
         public static func c(_ string: String) -> String { return cyan(string) }
         public static func w(_ string: String) -> String { return white(string) }
         private static func formatColor(string: String, colorCode: ColorCode) -> String {
            return "\(escape)\(colorCode.bgColorLight)m\(string)\(escape)\(ColorCode.bgColorDefault)m"
         }
      }

      public static func black(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Black) }
      public static func red(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Red) }
      public static func green(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Green) }
      public static func yellow(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Yellow) }
      public static func blue(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Blue) }
      public static func magenta(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Magenta) }
      public static func cyan(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Cyan) }
      public static func lightGray(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.LightGray) }
      public static func k(_ string: String) -> String { return black(string) }
      public static func r(_ string: String) -> String { return red(string) }
      public static func g(_ string: String) -> String { return green(string) }
      public static func y(_ string: String) -> String { return yellow(string) }
      public static func b(_ string: String) -> String { return blue(string) }
      public static func m(_ string: String) -> String { return magenta(string) }
      public static func c(_ string: String) -> String { return cyan(string) }
      public static func w(_ string: String) -> String { return lightGray(string) }
      private static func formatColor(string: String, colorCode: ColorCode) -> String {
         return "\(escape)\(colorCode.bgColorNormal)m\(string)\(escape)\(ColorCode.bgColorDefault)m"
      }
   }

   // Styles
   public struct style {
      public static func b(_ string: String) -> String { return formatStyle(string: string, formatCode: 1) }
      public static func u(_ string: String) -> String { return formatStyle(string: string, formatCode: 4) }
      private static func formatStyle(string: String, formatCode: Int, resetCode: Int = 0) -> String {
         return "\(escape)\(formatCode)m\(string)\(escape)\(resetCode)m"
      }
   }

   public static func bold(string: String) -> String { return style.b(string) }
   public static func underline(string: String) -> String { return style.u(string) }

   // Colors
   public static func black(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Black) }
   public static func red(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Red) }
   public static func green(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Green) }
   public static func yellow(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Yellow) }
   public static func blue(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Blue) }
   public static func magenta(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Magenta) }
   public static func cyan(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Cyan) }
   public static func lightGray(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.LightGray) }
   public static func k(_ string: String) -> String { return black(string) }
   public static func r(_ string: String) -> String { return red(string) }
   public static func g(_ string: String) -> String { return green(string) }
   public static func y(_ string: String) -> String { return yellow(string) }
   public static func b(_ string: String) -> String { return blue(string) }
   public static func m(_ string: String) -> String { return magenta(string) }
   public static func c(_ string: String) -> String { return cyan(string) }
   public static func w(_ string: String) -> String { return lightGray(string) }
   private static func formatColor(string: String, colorCode: ColorCode) -> String {
      return "\(escape)\(colorCode.fgColorNormal)m\(string)\(escape)\(ColorCode.fgColorDefault)m"
   }

   public struct light {
      public static func darkGray(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Black) }
      public static func red(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Red) }
      public static func green(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Green) }
      public static func yellow(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Yellow) }
      public static func blue(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Blue) }
      public static func magenta(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Magenta) }
      public static func cyan(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.Cyan) }
      public static func white(_ string: String) -> String { return formatColor(string: string, colorCode: ColorCode.LightGray) }
      public static func k(_ string: String) -> String { return darkGray(string) }
      public static func r(_ string: String) -> String { return red(string) }
      public static func g(_ string: String) -> String { return green(string) }
      public static func y(_ string: String) -> String { return yellow(string) }
      public static func b(_ string: String) -> String { return blue(string) }
      public static func m(_ string: String) -> String { return magenta(string) }
      public static func c(_ string: String) -> String { return cyan(string) }
      public static func w(_ string: String) -> String { return white(string) }
      private static func formatColor(string: String, colorCode: ColorCode) -> String {
         return "\(escape)\(colorCode.fgColorLight)m\(string)\(escape)\(ColorCode.fgColorDefault)m"
      }
   }
}

// swiftlint:enable type_name
