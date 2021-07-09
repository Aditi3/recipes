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
    
    static func getDate() -> String {
        let date = Date.init()
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, d MMMM"
        return formatter.string(from: date as Date)
    }
    
}
