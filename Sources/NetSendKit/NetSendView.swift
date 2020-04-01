//
//  NetSendView.swift
//  VST3NetSend
//
//  Created by Vlad Gorlov on 25.07.18.
//  Copyright © 2018 Vlad Gorlov. All rights reserved.
//

import Cocoa

class NetSendView: NSView {

   private (set) lazy var bonjourName = NSTextField()
   private lazy var boxTop = NSBox()
   private lazy var boxOptions = NSBox()
   private (set) lazy var connectionFlag = NSButton()
   private lazy var customMenu = NSMenu()
   private lazy var customMenuItem0 = NSMenuItem()
   private lazy var customMenuItem1 = NSMenuItem()
   private lazy var customMenuItem10 = NSMenuItem()
   private lazy var customMenuItem11 = NSMenuItem()
   private lazy var customMenuItem12 = NSMenuItem()
   private lazy var customMenuItem13 = NSMenuItem()
   private lazy var customMenuItem14 = NSMenuItem()
   private lazy var customMenuItem15 = NSMenuItem()
   private lazy var customMenuItem16 = NSMenuItem()
   private lazy var customMenuItem17 = NSMenuItem.separator()
   private lazy var customMenuItem18 = NSMenuItem()
   private lazy var customMenuItem19 = NSMenuItem()
   private lazy var customMenuItem2 = NSMenuItem()
   private lazy var customMenuItem20 = NSMenuItem()
   private lazy var customMenuItem21 = NSMenuItem()
   private lazy var customMenuItem3 = NSMenuItem.separator()
   private lazy var customMenuItem4 = NSMenuItem()
   private lazy var customMenuItem5 = NSMenuItem()
   private lazy var customMenuItem6 = NSMenuItem.separator()
   private lazy var customMenuItem7 = NSMenuItem()
   private lazy var customMenuItem8 = NSMenuItem()
   private lazy var customMenuItem9 = NSMenuItem.separator()
   private (set) lazy var dataFormat = NSPopUpButton()
   private (set) lazy var password = NSSecureTextField()
   private (set) lazy var port = NSTextField()
   private (set) lazy var status = NSTextField()
   private lazy var textField1 = NSTextField()
   private lazy var textFieldPort = NSTextField()
   private lazy var textField3 = NSTextField()
   private lazy var textFieldBonjourName = NSTextField()
   private lazy var textFieldPassword = NSTextField()

   override func draw(_ dirtyRect: NSRect) {
      NSColor.controlColor.setFill()
      dirtyRect.fill()
   }

   override init(frame frameRect: NSRect) {
      super.init(frame: frameRect)
      setupUI()
   }

   required init?(coder decoder: NSCoder) {
      fatalError()
   }

   private func setupUI() {

      frame = CGRect(origin: .zero, size: CGSize(width: 358, height: 218))

      addSubview(boxTop)
      addSubview(boxOptions)

      boxOptions.autoresizesSubviews = false
      boxOptions.autoresizingMask = [.maxXMargin, .minYMargin]
      boxOptions.borderType = .lineBorder
      boxOptions.frame = CGRect(x: 12, y: 12, width: 334, height: 88)
      boxOptions.title = "Options"
      boxOptions.contentView?.addSubview(bonjourName)
      boxOptions.contentView?.addSubview(password)
      boxOptions.contentView?.addSubview(textFieldBonjourName)
      boxOptions.contentView?.addSubview(textFieldPassword)

      textFieldPassword.alignment = .right
      textFieldPassword.autoresizingMask = [.maxXMargin, .minYMargin]
      textFieldPassword.backgroundColor = .controlColor
      textFieldPassword.controlSize = .small
      textFieldPassword.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      textFieldPassword.frame = CGRect(x: 12, y: 16, width: 82, height: 14)
      textFieldPassword.lineBreakMode = .byClipping
      textFieldPassword.setContentHuggingPriority(.defaultHigh, for: .vertical)
      textFieldPassword.stringValue = "Password:"
      textFieldPassword.textColor = .controlTextColor
      textFieldPassword.isBezeled = false
      textFieldPassword.isEditable = false
      (textFieldPassword.cell as? NSTextFieldCell)?.isScrollable = true
      (textFieldPassword.cell as? NSTextFieldCell)?.sendsActionOnEndEditing = true

      textFieldBonjourName.alignment = .right
      textFieldBonjourName.autoresizingMask = [.maxXMargin, .minYMargin]
      textFieldBonjourName.backgroundColor = .controlColor
      textFieldBonjourName.controlSize = .small
      textFieldBonjourName.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      textFieldBonjourName.frame = CGRect(x: 12, y: 42, width: 82, height: 14)
      textFieldBonjourName.lineBreakMode = .byClipping
      textFieldBonjourName.setContentHuggingPriority(.defaultHigh, for: .vertical)
      textFieldBonjourName.stringValue = "Bonjour name:"
      textFieldBonjourName.textColor = .controlTextColor
      textFieldBonjourName.isBezeled = false
      textFieldBonjourName.isEditable = false
      (textFieldBonjourName.cell as? NSTextFieldCell)?.isScrollable = true
      (textFieldBonjourName.cell as? NSTextFieldCell)?.sendsActionOnEndEditing = true

      password.autoresizingMask = [.maxXMargin, .minYMargin]
      password.backgroundColor = .textBackgroundColor
      password.controlSize = .small
      password.drawsBackground = true
      password.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      password.frame = CGRect(x: 100, y: 14, width: 218, height: 19)
      password.isBezeled = true
      password.isEditable = true
      password.isSelectable = true
      password.lineBreakMode = .byClipping
      password.setContentHuggingPriority(.defaultHigh, for: .vertical)
      password.textColor = .textColor
      (password.cell as? NSTextFieldCell)?.allowedInputSourceLocales = [NSAllRomanInputSourcesLocaleIdentifier]
      (password.cell as? NSTextFieldCell)?.isScrollable = true
      (password.cell as? NSTextFieldCell)?.sendsActionOnEndEditing = true
      (password.cell as? NSTextFieldCell)?.usesSingleLineMode = true

      bonjourName.autoresizingMask = [.maxXMargin, .minYMargin]
      bonjourName.backgroundColor = .textBackgroundColor
      bonjourName.controlSize = .small
      bonjourName.drawsBackground = true
      bonjourName.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      bonjourName.frame = CGRect(x: 100, y: 40, width: 218, height: 19)
      bonjourName.isBezeled = true
      bonjourName.isEditable = true
      bonjourName.isSelectable = true
      bonjourName.lineBreakMode = .byClipping
      bonjourName.setContentHuggingPriority(.defaultHigh, for: .vertical)
      bonjourName.stringValue = "VST3NetSend"
      bonjourName.textColor = .textColor
      (bonjourName.cell as? NSTextFieldCell)?.isScrollable = true
      (bonjourName.cell as? NSTextFieldCell)?.sendsActionOnEndEditing = true
      (bonjourName.cell as? NSTextFieldCell)?.state = .on

      boxTop.autoresizesSubviews = false
      boxTop.autoresizingMask = [.maxXMargin, .minYMargin]
      boxTop.borderType = .lineBorder
      boxTop.frame = CGRect(x: 12, y: 104, width: 334, height: 100)
      boxTop.titlePosition = .noTitle
      boxTop.contentView?.addSubview(port)
      boxTop.contentView?.addSubview(textField1)
      boxTop.contentView?.addSubview(status)
      boxTop.contentView?.addSubview(textFieldPort)
      boxTop.contentView?.addSubview(textField3)
      boxTop.contentView?.addSubview(dataFormat)
      boxTop.contentView?.addSubview(connectionFlag)

      connectionFlag.alignment = .center
      connectionFlag.autoresizingMask = [.maxXMargin, .minYMargin]
      connectionFlag.bezelStyle = .rounded
      connectionFlag.controlSize = .small
      connectionFlag.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      connectionFlag.frame = CGRect(x: 230, y: 63, width: 93, height: 28)
      connectionFlag.imageScaling = .scaleProportionallyDown
      connectionFlag.setContentHuggingPriority(.defaultHigh, for: .vertical)
      connectionFlag.title = "Disconnect"
      connectionFlag.setButtonType(.toggle)
      connectionFlag.cell?.isBordered = true
      connectionFlag.cell?.state = .on

      dataFormat.alignment = .left
      dataFormat.autoresizingMask = [.maxXMargin, .minYMargin]
      dataFormat.bezelStyle = .rounded
      dataFormat.controlSize = .small
      dataFormat.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      dataFormat.frame = CGRect(x: 97, y: 40, width: 224, height: 22)
      dataFormat.imageScaling = .scaleProportionallyDown
      dataFormat.lineBreakMode = .byTruncatingTail
      dataFormat.setContentHuggingPriority(.defaultHigh, for: .vertical)
      dataFormat.cell?.isBezeled = true
      dataFormat.menu = customMenu

      customMenu.title = "OtherViews"
      customMenu.addItem(customMenuItem0)
      customMenu.addItem(customMenuItem1)
      customMenu.addItem(customMenuItem2)
      customMenu.addItem(customMenuItem3)
      customMenu.addItem(customMenuItem4)
      customMenu.addItem(customMenuItem5)
      customMenu.addItem(customMenuItem6)
      customMenu.addItem(customMenuItem7)
      customMenu.addItem(customMenuItem8)
      customMenu.addItem(customMenuItem9)
      customMenu.addItem(customMenuItem10)
      customMenu.addItem(customMenuItem11)
      customMenu.addItem(customMenuItem12)
      customMenu.addItem(customMenuItem13)
      customMenu.addItem(customMenuItem14)
      customMenu.addItem(customMenuItem15)
      customMenu.addItem(customMenuItem16)
      customMenu.addItem(customMenuItem17)
      customMenu.addItem(customMenuItem18)
      customMenu.addItem(customMenuItem19)
      customMenu.addItem(customMenuItem20)
      customMenu.addItem(customMenuItem21)

      customMenuItem21.keyEquivalentModifierMask = []
      customMenuItem21.tag = 17
      customMenuItem21.title = "AAC Low Delay 32 kbps per channel"

      customMenuItem20.keyEquivalentModifierMask = []
      customMenuItem20.tag = 16
      customMenuItem20.title = "AAC Low Delay 40 kbps per channel"

      customMenuItem19.keyEquivalentModifierMask = []
      customMenuItem19.tag = 15
      customMenuItem19.title = "AAC Low Delay 48 kbps per channel"

      customMenuItem18.keyEquivalentModifierMask = []
      customMenuItem18.tag = 14
      customMenuItem18.title = "AAC Low Delay 64 kbps per channel"

      customMenuItem17.tag = -1

      customMenuItem16.keyEquivalentModifierMask = []
      customMenuItem16.tag = 13
      customMenuItem16.title = "AAC 32 kbps per channel"

      customMenuItem15.keyEquivalentModifierMask = []
      customMenuItem15.tag = 12
      customMenuItem15.title = "AAC 40 kbps per channel"

      customMenuItem14.keyEquivalentModifierMask = []
      customMenuItem14.tag = 11
      customMenuItem14.title = "AAC 48 kbps per channel"

      customMenuItem13.keyEquivalentModifierMask = []
      customMenuItem13.tag = 10
      customMenuItem13.title = "AAC 64 kbps per channel"

      customMenuItem12.keyEquivalentModifierMask = []
      customMenuItem12.tag = 9
      customMenuItem12.title = "AAC 80 kbps per channel"

      customMenuItem11.keyEquivalentModifierMask = []
      customMenuItem11.tag = 8
      customMenuItem11.title = "AAC 96 kbps per channel"

      customMenuItem10.keyEquivalentModifierMask = []
      customMenuItem10.tag = 7
      customMenuItem10.title = "AAC 128 kbps per channel"

      customMenuItem9.tag = -1

      customMenuItem8.keyEquivalentModifierMask = []
      customMenuItem8.tag = 6
      customMenuItem8.title = "IMA 4:1"

      customMenuItem7.keyEquivalentModifierMask = []
      customMenuItem7.tag = 5
      customMenuItem7.title = "µ-Law"

      customMenuItem6.tag = -1

      customMenuItem5.keyEquivalentModifierMask = []
      customMenuItem5.tag = 4
      customMenuItem5.title = "16 bit Apple Lossless"

      customMenuItem4.keyEquivalentModifierMask = []
      customMenuItem4.tag = 3
      customMenuItem4.title = "24 bit Apple Lossless"

      customMenuItem3.tag = -1

      customMenuItem2.keyEquivalentModifierMask = []
      customMenuItem2.tag = 2
      customMenuItem2.title = "16 bit integer PCM"

      customMenuItem1.keyEquivalentModifierMask = []
      customMenuItem1.tag = 1
      customMenuItem1.title = "24 bit integer PCM"

      customMenuItem0.keyEquivalentModifierMask = []
      customMenuItem0.title = "32 bit floating point PCM"

      textField3.alignment = .right
      textField3.autoresizingMask = [.maxXMargin, .minYMargin]
      textField3.backgroundColor = .controlColor
      textField3.controlSize = .small
      textField3.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      textField3.frame = CGRect(x: 12, y: 45, width: 82, height: 14)
      textField3.lineBreakMode = .byClipping
      textField3.setContentHuggingPriority(.defaultHigh, for: .vertical)
      textField3.stringValue = "Data format:"
      textField3.textColor = .controlTextColor
      textField3.isBezeled = false
      textField3.isEditable = false
      (textField3.cell as? NSTextFieldCell)?.isScrollable = true
      (textField3.cell as? NSTextFieldCell)?.sendsActionOnEndEditing = true

      textFieldPort.alignment = .right
      textFieldPort.autoresizingMask = [.maxXMargin, .minYMargin]
      textFieldPort.backgroundColor = .controlColor
      textFieldPort.controlSize = .small
      textFieldPort.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      textFieldPort.frame = CGRect(x: 12, y: 16, width: 82, height: 14)
      textFieldPort.lineBreakMode = .byClipping
      textFieldPort.setContentHuggingPriority(.defaultHigh, for: .vertical)
      textFieldPort.stringValue = "Port:"
      textFieldPort.textColor = .controlTextColor
      textFieldPort.isBezeled = false
      textFieldPort.isEditable = false
      (textFieldPort.cell as? NSTextFieldCell)?.isScrollable = true
      (textFieldPort.cell as? NSTextFieldCell)?.sendsActionOnEndEditing = true

      status.autoresizingMask = [.maxXMargin, .minYMargin]
      status.backgroundColor = .controlColor
      status.controlSize = .small
      status.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      status.frame = CGRect(x: 97, y: 72, width: 132, height: 14)
      status.lineBreakMode = .byClipping
      status.setContentHuggingPriority(.defaultHigh, for: .vertical)
      status.stringValue = "Listening"
      status.textColor = .controlTextColor
      status.isBezeled = false
      status.isEditable = false
      (status.cell as? NSTextFieldCell)?.isScrollable = true
      (status.cell as? NSTextFieldCell)?.sendsActionOnEndEditing = true

      textField1.alignment = .right
      textField1.autoresizingMask = [.maxXMargin, .minYMargin]
      textField1.backgroundColor = .controlColor
      textField1.controlSize = .small
      textField1.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      textField1.frame = CGRect(x: 12, y: 72, width: 82, height: 14)
      textField1.lineBreakMode = .byClipping
      textField1.setContentHuggingPriority(.defaultHigh, for: .vertical)
      textField1.stringValue = "Status:"
      textField1.textColor = .controlTextColor
      textField1.isBezeled = false
      textField1.isEditable = false
      (textField1.cell as? NSTextFieldCell)?.isScrollable = true
      (textField1.cell as? NSTextFieldCell)?.sendsActionOnEndEditing = true

      port.autoresizingMask = [.maxXMargin, .minYMargin]
      port.backgroundColor = .textBackgroundColor
      port.controlSize = .small
      port.drawsBackground = true
      port.font = NSFont.systemFont(ofSize: NSFont.systemFontSize(for: .small), weight: .regular)
      port.frame = CGRect(x: 100, y: 14, width: 96, height: 19)
      port.isBezeled = true
      port.isEditable = true
      port.isSelectable = true
      port.lineBreakMode = .byClipping
      port.setContentHuggingPriority(.defaultHigh, for: .vertical)
      port.stringValue = "52800"
      port.textColor = .textColor
      (port.cell as? NSTextFieldCell)?.isScrollable = true
      (port.cell as? NSTextFieldCell)?.sendsActionOnEndEditing = true
      (port.cell as? NSTextFieldCell)?.state = .on
   }
}
