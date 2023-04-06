//
//  CategoryCollectionViewCell.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/6/23.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: CategoryCollectionViewCell.self)

    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productType: UILabel!
    @IBOutlet weak var numberOfProduct: UILabel!
    
    
    func setup(with products:CategoryDetails){
        self.productImg.image = UIImage(named: products.productImg!)
        self.productType.text = products.productType
        self.numberOfProduct.text = products.numberOfItem
    }
}
