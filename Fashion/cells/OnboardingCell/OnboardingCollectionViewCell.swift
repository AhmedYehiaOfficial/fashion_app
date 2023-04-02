//
//  OnboardingCollectionViewCell.swift
//  Fashion
//
//  Created by Ahmed Yehia on 3/31/23.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: OnboardingCollectionViewCell.self)

    @IBOutlet weak var sliderImageView: UIImageView!
    @IBOutlet weak var sliderTilteLbl: UILabel!
    
    func setup(with splashSlider:OnboardingSliderDetails){
        self.sliderTilteLbl.text = splashSlider.title
        self.sliderImageView.image = UIImage(named: splashSlider.image!)
   
}
}
