//
//  CartCollectionViewCell.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/13/23.
//

import UIKit

class CartCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: CartCollectionViewCell.self)

    @IBOutlet weak var productType: UILabel!
    @IBOutlet weak var productBrandName: UILabel!
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    
    func setup(with products:CartDetails){
        self.productImg.image = UIImage(named: products.productIamge!)
        self.productBrandName.text = products.productBrandName
        self.productPrice.text = products.productPrice
        self.productType.text = products.productType
    }
}
