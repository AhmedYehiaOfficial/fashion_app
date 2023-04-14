//
//  ProductCategoryCollectionViewCell.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/10/23.
//

import UIKit

class ProductCategoryCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: ProductCategoryCollectionViewCell.self)
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productDescreption: UILabel!
    @IBOutlet weak var productBrandName: UILabel!
    
    func setup(with productsCat:ProductCategoryDetails) {
        self.productImg.image = UIImage(named: productsCat.productCategoryImg!)
        self.productBrandName.text = productsCat.productBrandName
        self.productDescreption.text = productsCat.productDescreption
        self.productPrice.text = productsCat.productCategoryPrice
    }
}
