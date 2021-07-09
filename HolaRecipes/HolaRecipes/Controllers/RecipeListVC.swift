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
    func setUpLayout() {
        self.recipeTableView.separatorStyle = .none
        self.recipeTableView.allowsSelection = false
    }
    
    /// Configure TableView properties
    func configureTableView() {
        self.recipeTableView.delegate = self
        self.recipeTableView.dataSource = self
    }
    
    /// Register the Tableview Cell XIB
    func registerCell() {
        self.recipeTableView.register(UINib(nibName: "RecipeCell", bundle: Bundle.main), forCellReuseIdentifier: "recipeCell")
    }
    
    // MARK: - Request Recipes API
    
    /// Request to fetch the Recipes List
    func getRecipes() {
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
    
    //    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 64))
    //        let dateLabel = UILabel()
    //        dateLabel.frame = CGRect.init(x: 10, y: 5, width: headerView.frame.width-20, height: headerView.frame.height-10)
    //        dateLabel.numberOfLines = 0
    //        dateLabel.font = UIFont.boldSystemFont(ofSize: 18)
    //        dateLabel.text = ("Today is \(Utils.getDate())")
    //        headerView.backgroundColor = UIColor.white
    //        headerView.addSubview(dateLabel)
    //        return headerView
    //    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 64
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell" , for: indexPath) as! RecipeCell
        cell.configureRecipeCell(recipe: recipes[indexPath.row])
        return cell
    }
}

