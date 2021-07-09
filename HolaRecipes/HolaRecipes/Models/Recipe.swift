//
//  RecipeModel.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import Foundation

// MARK: - Recipe

struct Recipe: Codable {
    let recipeDescription: String
    let difficulty: Int
    let headline, id, image, name: String
    
    enum CodingKeys: String, CodingKey {
        case recipeDescription = "description"
        case difficulty, headline, id, image, name
    }
}

typealias Recipes = [Recipe]
