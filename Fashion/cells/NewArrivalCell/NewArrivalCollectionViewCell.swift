//
//  NewArrivalCollectionViewCell.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/2/23.
//

import UIKit

class NewArrivalCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: NewArrivalCollectionViewCell.self)

    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var brandName: UILabel!
    @IBOutlet weak var productType: UILabel!
    
    func setup(with products:NewArrivalDetails){
        self.productImg.image = UIImage(named: products.productImg!)
        self.productPrice.text = products.productPrice
        self.brandName.text = products.brandName
        self.productType.text = products.productType
    }
    @IBAction func favBtn(_ sender: Any) {
    }
}
