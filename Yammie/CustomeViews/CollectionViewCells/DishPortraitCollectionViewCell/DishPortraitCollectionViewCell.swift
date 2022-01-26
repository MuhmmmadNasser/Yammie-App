//
//  DishPortraitCollectionViewCell.swift
//  Yammie
//
//  Created by Mohamed on 15/11/2021.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {

    static let identifier = "DishPortraitCollectionViewCell"
   
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var caloriesLbl: UILabel!

    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setup(dish: Dish){
        titleLbl.text = dish.name
        categoryImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.description
    }
    
    
    

}
