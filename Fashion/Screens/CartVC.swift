//
//  CartVC.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/13/23.
//

import UIKit

class CartVC: ViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    static let ID = String(describing: CartVC.self)
    @IBOutlet weak var cartCollectionView: UICollectionView!
    var cartProductDetails:[CartDetails] = []
    let productImg = ["OfferImg","splashscreen","splashScreen1"]
    let productBrandName = ["Nike","Nike","Nike",]
    let productType = ["shoesessss","shoesessss","shoesesssss",]
    let productPrice = ["112$","112$","112$",]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCartCell(in: cartCollectionView)
        setupCartCell()
        cartCollectionView.delegate = self
        cartCollectionView.dataSource = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        productType.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CartCollectionViewCell.identifier, for: indexPath) as! CartCollectionViewCell
        cell.setup(with: cartProductDetails[indexPath.row])
        return cell
    }
    
    func setupCartCell() {
        for i in 1...productPrice.count{
            cartProductDetails.append(CartDetails(productIamge: productImg[i - 1], productPrice: productPrice[i - 1], productType: productType[i - 1], productBrandName: productBrandName[i - 1]))
        }
    }
    
    func registerCartCell(in collectionView:UICollectionView){
        let nib = UINib(nibName: CartCollectionViewCell.identifier, bundle: nil)
        collectionView.register(nib,forCellWithReuseIdentifier: CartCollectionViewCell.identifier)
    }


}
