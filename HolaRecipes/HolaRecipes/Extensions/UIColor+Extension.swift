//
//  UIColor+Extensions.swift
//  HelloRecipes
//
//  Created by Aditi Agrawal on 17/10/20.
//

import UIKit

extension UIColor {
    
    convenience init(hex: String, alpha: CGFloat = 1.0) {
   
    let hex = hex.replacingOccurrences(of: "#", with: "")

    guard hex.count == 6 else {
      self.init(white: 1.0, alpha: 1.0)
      return
    }

    self.init(
      red:   CGFloat((Int(hex, radix: 16)! >> 16) & 0xFF) / 255.0,
      green: CGFloat((Int(hex, radix: 16)! >> 8) & 0xFF) / 255.0,
        blue:  CGFloat((Int(hex, radix: 16)!) & 0xFF) / 255.0, alpha: alpha
    )
  }
}
