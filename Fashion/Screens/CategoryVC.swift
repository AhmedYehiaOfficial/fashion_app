//
//  CategoryVC.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/6/23.
//

import UIKit

class CategoryVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
 
    
 
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    static let ID = String(describing: CategoryVC.self)
    
    var category :[CategoryDetails] = []
    
    let productImg = ["OfferImg","OfferImg","OfferImg"]
    let productType = ["shoese","shoese","shoese",]
    let numberOfProduct = ["112 Item","112 Item","112 Item",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCategoryCell(in: categoryCollectionView)
        setupCategoryCell()
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productType.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let categoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        categoryCell.setup(with: category[indexPath.row])
        return categoryCell
    }

    
    func setupCategoryCell() {
        for i in 1...productImg.count{
            category.append(CategoryDetails(productImg: productImg[i - 1], productType: productType[i - 1], numberOfItem: numberOfProduct[i - 1]))
        }
    }
    
    func registerCategoryCell(in collectionView:UICollectionView){
        let nib = UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil)
        collectionView.register(nib,forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
    
    
}
