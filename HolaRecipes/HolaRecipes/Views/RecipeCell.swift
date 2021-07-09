//
//  RecipeCell.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import UIKit
import Kingfisher
import FloatRatingView

class RecipeCell: UITableViewCell {
    
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
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    // MARK: - Setup UI
    
    func setUpLayout() {
        
//        self.backgroundColor = K.Color.CoolWhite
        // recipe name setup
        self.nameLabel.textColor = Color.WarmGrey
        self.nameLabel.font = Font.boldFontWithSize(ofSize: 24.0)
        
        // recipe headline setup
        self.headlineLabel.textColor = Color.WarmGrey
        self.headlineLabel.font = Font.italicFontWithSize(ofSize: 14.0)
        
        // recipe description setup
        self.descLabel.textColor = Color.WarmGrey
        self.descLabel.font = Font.regularFontWithSize(ofSize: 16.0)
        
        // get recipe button setup
        self.getRecipeButton.backgroundColor = Color.JadeGreen
        self.getRecipeButton.layer.cornerRadius = 3.0
        
        // recipe image view setup
        self.recipeImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        self.difficulty.emptyImage = UIImage(named: "foodIcon_gray")
        self.difficulty.fullImage = UIImage(named: "foodIcon")
        self.difficulty.maxRating = 3
        self.difficulty.isUserInteractionEnabled = false
    }
    
    
    // MARK: - Load and Configure Recipe data
    
    func configureRecipeCell(recipe: Recipe) {
        /// Update the Cell Layouts
        self.recipeImageView.kf.setImage(with: URL(string: recipe.image), placeholder: UIImage(named: "recipe_default"))
        self.nameLabel.text = recipe.name
        self.headlineLabel.text = recipe.headline
        self.descLabel.text = recipe.recipeDescription
        self.difficulty.rating = Double(recipe.difficulty)
    }
    
}
