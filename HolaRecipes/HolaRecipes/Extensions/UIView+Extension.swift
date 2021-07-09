//
//  UIView+Extension.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import UIKit

extension UIView {

    func addCardLayer() {
        self.alpha = 1.0
        self.clipsToBounds = true
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 0.3
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowRadius = 0.3
        self.layer.shadowPath = UIBezierPath(rect:self.bounds).cgPath
        self.layer.shadowOpacity = 0.5
        self.layer.borderWidth = 0.0
        self.layer.borderColor = K.Color.main.cgColor
    }
}
