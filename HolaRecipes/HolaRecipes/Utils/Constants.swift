//
//  Constants.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import UIKit
import Foundation

struct K {
        
    static let AppName = "Recipes"
    
    struct API {
        static let baseApiUrl = "https://raw.githubusercontent.com/Aditi3"
    }
    
    struct CellIdentifier {
        static let recipeCell = "recipeCell"
    }
    
    struct Color {
        /// main app color defined here so that can be updated easily if required
        public static let Orange = UIColor(hex: "F17023")//-- RGB: 241 112 35
        public static let OpaqueOrange = UIColor(hex: "ECDCA0", alpha: 0.7)
        
        public static let OpaqueWhite = UIColor(hex: "FFFFFF", alpha: 0.7)
        public static let CoolWhite = UIColor(hex: "F0F0F0")
        
        public static let SalmonPink = UIColor(hex: "FF7179")//-- RGB:

        public static let LightOrange = UIColor(hex: "FCCC06")//-- RGB: 252 204 6
        public static let DimGrey = UIColor(hex: "F8F8F8")//-- RGB: 248 248 248
        public static let Grey = UIColor(hex: "F4F4F4")//-- RGB: 244 244 244
        public static let LightGrey = UIColor(hex: "E2E2E2")//-- RGB: 226 226 226
        public static let DarkGrey = UIColor(hex: "A0A0A0")//-- RGB: 160 160 160
        public static let BorderGrey = UIColor(hex: "F3F1F0")//-- RGB: 243 241 240
        public static let CoolGrey = UIColor(hex: "6F676F")//-- RGB: 111 103 111
        public static let WarmGrey = UIColor(hex: "9a9a9a")//-- RGB: 154.0 154.0 154.0
        public static let DarkWarmGrey = UIColor(hex: "707070")//-- RGB: 112 112 112

        public static let Purplish = UIColor(hex: "403141")//-- RGB: 64 49 65
        public static let GreyishBrown = UIColor(hex: "424242")//-- RGB: 66 66 66
        
        public static let Black20 = UIColor(hex: "333333, alpha: 0.2")//-- RGB: 51 51 51
        
        public static let Black8 = UIColor(hex: "000000, alpha: 0.8")//-- RGB: 0 0 0

        public static let pinkishGrey = UIColor(hex: "d8d3d3")//-- RGB: 0 0 0
        
        public static let GreyBlack = UIColor(hex: "333333, alpha: 1")//-- RGB: 51 51 51

        
        public static let PaleRed = UIColor(hex: "DA3A25")//-- RGB: 218 58 37
        public static let JadeGreen = UIColor(hex: "27AB5C")//-- RGB: 39 171 92
        
        public static let Orange20 = UIColor(hex: "F17023, alpha: 0.2")//-- RGB: 241 112 35
        
        public static let Green = UIColor(hex: "5FAA0E")//-- RGB: 95 170 14

        public static let CharcoalGrey = UIColor(hex: "2E2E31")//-- RGB: 46 46 49
        
    }
}
