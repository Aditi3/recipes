//
//  RecipeListVC.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import UIKit

class RecipeListVC: UIViewController {
    
    var recipes = Recipes()
    @IBOutlet weak var recipeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpLayout()
        registerCell()
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
    }
    
    /// Register the Tableview Cell XIB
    private func registerCell() {
        self.recipeTableView.register(UINib(nibName: "RecipeCell", bundle: Bundle.main), forCellReuseIdentifier: K.CellIdentifier.recipeCell)
    }
    
    // MARK: - Request Recipes API
    
    /// Request to fetch the Recipes List
    private func getRecipes() {
        ///[weak self]  ensures that once the completion handler returns some code, the app can release the memory
        RecipeManager().fetchRecipes { [weak self] recipes in
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
        let cell = tableView.dequeueReusableCell(withIdentifier: K.CellIdentifier.recipeCell , for: indexPath) as! RecipeCell
        cell.configureRecipeCell(recipe: recipes[indexPath.row])
        return cell
    }
}

