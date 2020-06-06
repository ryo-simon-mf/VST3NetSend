//
//  TableViewCell.swift
//  WaveLabs
//
//  Created by Vlad Gorlov on 06.06.2020.
//  Copyright © 2020 Vlad Gorlov. All rights reserved.
//

#if canImport(UIKit)

import UIKit

open class TableViewCell: UITableViewCell {

   private var userDefinedIntrinsicContentSize: CGSize?

   public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      setupUI()
      setupLayout()
      setupHandlers()
      setupDefaults()
   }

   public required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
   }

   open override func awakeFromNib() {
      super.awakeFromNib()
      setupUI()
      setupLayout()
      setupHandlers()
      setupDefaults()
   }

   open override var intrinsicContentSize: CGSize {
      return userDefinedIntrinsicContentSize ?? super.intrinsicContentSize
   }

   @objc open dynamic func setupUI() {
      // Base class does nothing.
   }

   @objc open dynamic func setupLayout() {
      // Base class does nothing.
   }

   @objc open dynamic func setupHandlers() {
      // Base class does nothing.
   }

   @objc open dynamic func setupDefaults() {
      // Base class does nothing.
   }
}

extension TableViewCell {

   /// When passed **nil**, then system value is used.
   public func setIntrinsicContentSize(_ size: CGSize?) {
      userDefinedIntrinsicContentSize = size
   }
}
#endif
