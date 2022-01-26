//
//  OnboardingCollectionViewCell.swift
//  Yammie
//
//  Created by Mohamed on 11/11/2021.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
   
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    func setUp(_ slide: OnboardingSlide){
        slideImageView.image =  slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.discription
    }
    
    
}
