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
        static let baseApiUrl = "https://api.beta.getbux.com"
    }
    
    struct CellIdentifier {
        static let productCell = "productCell"
    }
    
    struct Color {
        /// main app color defined here so that can be updated easily if required
        static let background = UIColor(hex: "#F0F0F0")
        static let main = UIColor(hex: "#331b4a")
    }
}
