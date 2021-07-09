//
//  RecipeService.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import Foundation

/// Handles the request related to Recipe API
class RecipeManager {
    
    let recipeUrl = "\(K.API.baseApiUrl)/recipes/develop/recipes.json"
    
    // MARK: -  Fetch and Handle Recipe Request
    
    /// Fetch the Recipes data
    ///
    /// - Parameters:
    ///   - success: returns the successfully fetched and parsed recipe list
    ///   - failure: returns an failure/ error message
    func fetchRecipes(success: @escaping ([Recipe]) -> (), failure: @escaping (Error) -> ()) {
        
        NetworkHandler().requestJSON(apiPath: recipeUrl, apiParameters: [:], success: { (successJson) in
            let recipesData = self.parseRecipesJson(recipesData: successJson)
            recipesData != nil ? success(recipesData!) : failure(APIError.parseError(""))
        }, failure: {(error) in
            failure(error)
        })
    }
    
    // MARK: - Parsing Recipes Json Response
    
    // MARK: Parse Recipes Json
    
    /// Parse the Recipes JSON
    ///
    /// - Parameters:
    ///   - [Recipe]:  returns list of recipes
    private func parseRecipesJson(recipesData: Data) -> [Recipe]? {
        let decoder = JSONDecoder()
        do {
            let recipesDecodedData = try decoder.decode(Recipes.self, from: recipesData)
            return recipesDecodedData
            
        } catch {
            print("JSON error: \(error.localizedDescription)")
            return nil
        }
    }
}
