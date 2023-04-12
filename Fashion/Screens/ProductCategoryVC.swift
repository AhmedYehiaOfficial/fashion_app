//
//  ProductCategoryVC.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/12/23.
//

import UIKit

class ProductCategoryVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  
    static let ID = String(describing: ProductCategoryVC.self)
    var productCategory :[ProductCategoryDetails] = []
    let productImg = ["OfferImg","OfferImg","OfferImg"]
    let productBrandName = ["Nike","Nike","Nike",]
    let productDescreption = ["shoesessss","shoesessss","shoesesssss",]
    let productPrice = ["112$","112$","112$",]

    @IBOutlet weak var ProducetCategoryCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerProductCategoryCell(in: ProducetCategoryCollectionView)
        setupCategoryCell()
        
        ProducetCategoryCollectionView.delegate = self
        ProducetCategoryCollectionView.dataSource = self
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productPrice.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let productCategoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCategoryCollectionViewCell.identifier, for: indexPath) as! ProductCategoryCollectionViewCell
        productCategoryCell.setup(with: productCategory[indexPath.row])
        return productCategoryCell
        
    }
    func setupCategoryCell() {
        for i in 1...productImg.count{
            productCategory.append(ProductCategoryDetails(productCategoryImg: productImg[i - 1], productCategoryPrice: productPrice[i - 1], productDescreption: productDescreption[i - 1], productBrandName: productBrandName[i - 1]))
        }
    }
    
    
    func registerProductCategoryCell(in collectionView:UICollectionView){
        let nib = UINib(nibName: ProductCategoryCollectionViewCell.identifier, bundle: nil)
        collectionView.register(nib,forCellWithReuseIdentifier: ProductCategoryCollectionViewCell.identifier)
    }
}
