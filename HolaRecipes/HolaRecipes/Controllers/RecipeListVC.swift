//
//  RecipeListVC.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import UIKit

class RecipeListVC: UIViewController {
    
    @IBOutlet weak var recipeTableView: UITableView!
    var recipes = Recipes()
    fileprivate var recipeManager = RecipeManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpLayout()
        configureTableView()
        getRecipes()
    }
    
    
    // MARK: - Set/ Update to UI
    
    /// Setup View properties of RecipeVC
    private func setUpLayout() {
        self.title = K.getDate()
        if let navigationBar = self.navigationController?.navigationBar {
            navigationBar.prefersLargeTitles = true
        }
    }
    
    /// Configure TableView properties
    private func configureTableView() {
      
        self.recipeTableView.delegate = self
        self.recipeTableView.dataSource = self
        
        self.recipeTableView.separatorStyle = .none
        self.recipeTableView.allowsSelection = false
        
        RecipeCell.register(with: recipeTableView)
    }

    // MARK: - Request Recipes API
    
    /// Request to fetch the Recipes List
    private func getRecipes() {
        ///[weak self]  ensures that once the completion handler returns some code, the app can release the memory
        recipeManager.fetchRecipes { [weak self] recipes in
            /// Handles the success and received data
            if let self = self {
                self.recipes = recipes
                for recipe in self.recipes {
                    print(recipe.name)
                    print("===================================")
                }
                /// Reload the view using the main dispatch queue
                DispatchQueue.main.async {
                    /// Do something related to UIView
                    self.recipeTableView.reloadData()
                }
            }
            
        } failure: { error in
            /// Handles the failure and error described
            print(error.localizedDescription)
        }
    }
}

extension RecipeListVC:  UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cell = RecipeCell.dequeue(from: tableView, for: indexPath, with: recipe)
        return cell
    }
}

