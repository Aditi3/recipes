//
//  ViewController.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        requestRecipes()
    }
    
    func requestRecipes() {
        
        RecipeManager().fetchRecipes { recipes in
            for recipe in recipes {
                print(recipe.name)
                print("===================================")
            }
        } failure: { error in
            print(error.localizedDescription)
        }
    }
    
}

