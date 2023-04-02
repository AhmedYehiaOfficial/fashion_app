//
//  OffersCollectionViewCell.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/1/23.
//

import UIKit

class OffersCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: OffersCollectionViewCell.self)
    @IBOutlet weak var offerPrecentageLbl: UILabel!
    @IBOutlet weak var offerImg: UIImageView!
    @IBOutlet weak var offerPromoCodeLbl: UILabel!
    func setup(with offers:OffersDetails){
        self.offerImg.image = UIImage(named: offers.offerImg!)
        self.offerPrecentageLbl.text = offers.offerPrecentage
        self.offerPromoCodeLbl.text = offers.offerPromoCode
        
    }
    @IBAction func getOfferBtn(_ sender: Any) {
    }
}
