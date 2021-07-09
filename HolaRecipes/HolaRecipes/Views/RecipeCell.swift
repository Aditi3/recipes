//
//  HRRecipeCell.swift
//  HelloRecipes
//
//  Created by Aditi Agrawal on 17/10/20.
//

import UIKit
import Kingfisher
import FloatRatingView

class RecipeCell: UITableViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var getRecipeButton: UIButton!
    @IBOutlet weak var difficulty: FloatRatingView!
    
    // MARK: - Life Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpLayout()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // container setup card layout
        self.containerView?.layoutIfNeeded()
//        self.containerView?.addCardLayer()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    // MARK: - Setup
    
    func setUpLayout() {
        
//        self.backgroundColor = Utils.Color.background
        // recipe name setup
//        self.nameLabel.textColor = Utils.Color.main
        self.nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
        // recipe headline setup
//        self.headlineLabel.textColor = Utils.Color.main
        self.headlineLabel.font = UIFont.italicSystemFont(ofSize: 14)
        
        // recipe description setup
//        self.descLabel.textColor = Utils.Color.main
        self.descLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        
        // get recipe button setup
        self.getRecipeButton.setBackgroundImage(UIImage(named: "button"), for: .normal)
        self.getRecipeButton.layer.cornerRadius = 3.0
        
        // recipe image view setup
        self.recipeImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        self.difficulty.emptyImage = UIImage(named: "foodIcon_gray")
        self.difficulty.fullImage = UIImage(named: "foodIcon")
        self.difficulty.maxRating = 3
        self.difficulty.isUserInteractionEnabled = false
    }
    
    // MARK: - Load data
    
    func configureRecipeCell(recipe: Recipe) {
        
        let url = URL(string: recipe.image)
        self.recipeImageView.kf.setImage(with: url)
        self.nameLabel.text = recipe.name
        self.headlineLabel.text = recipe.headline
        self.descLabel.text = recipe.recipeDescription
        self.difficulty.rating = Double(recipe.difficulty)
    }
    
}
