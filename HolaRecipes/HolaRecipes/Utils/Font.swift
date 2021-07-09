//
//  Font.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import UIKit

struct Font {

    static func regularFontWithSize(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"Lato-Regular", size:fontSize)!
    }
    
    static func semiBoldFontWithSize(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"Lato-Semibold", size:fontSize)!
    }
    
    static func boldFontWithSize(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"Lato-Bold", size:fontSize)!
    }

    static func lightFontWithSize(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"Lato-Light", size:fontSize)!
    }
   
    static func italicFontWithSize(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"Lato-Italic", size:fontSize)!
    }
    
    static func regularHeadingFontWithSize(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"ProximaNovaSoft-Bold", size:fontSize)!
    }
    
    static func rupeeFontWithSize(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"RupeeForadian", size: fontSize)!
    }
    
    static func mediumFontWithSize(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"Lato-Medium", size: fontSize)!
    }
    
    static func proximaNovaRegular(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"ProximaNova-Regular", size: fontSize)!
    }
    
    static func jennaFontRegular(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont(name:"JennaSue", size: fontSize)!
    }
}
