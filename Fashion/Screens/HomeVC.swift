//
//  HomeVC.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/1/23.
//

import UIKit

class HomeVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
 
    static let ID = String(describing: HomeVC.self)
    var offers: [OffersDetails]=[]
    //MARK: Offer Var
    @IBOutlet weak var offersCollectionView: UICollectionView!
    let offerImg = ["OfferImg","OfferImg","OfferImg"]
    let offerPromoCode = ["With code:FSCREATION","With code:FSCREATION","With code:FSCREATION"]
    let offerLbl = ["50% Off On everything today","50% Off On everything today","50% Off On everything today"]
    
    
    //MARK: New Arrival Var
    @IBOutlet weak var newArrivalCollectionView: UICollectionView!
    var newArrivals :[NewArrivalDetails] = []
    let productImg = ["OfferImg","OfferImg","OfferImg","OfferImg","OfferImg","OfferImg"]
    let productPrice = ["50$","50$","50$","50$","50$","50$"]
    let brandName = ["Addidas","Addidas","Addidas","Addidas","Addidas","Addidas",]
    let productType = ["bag","bag","bag","bag","bag","bag",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        MARK:Offers
        registerOfferCell(in: offersCollectionView)
        setupOfferCell()
        offersCollectionView.delegate = self
        offersCollectionView.dataSource = self
        
//        MARK:New Arrival
        registerNewArrivalCell(in: newArrivalCollectionView)
        setupNewArrivalCell()
        newArrivalCollectionView.delegate = self
        newArrivalCollectionView.dataSource = self
        

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == offersCollectionView{
           return offers.count
        }else{
            return newArrivals.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == offersCollectionView{
       let offerCell = collectionView.dequeueReusableCell(withReuseIdentifier: OffersCollectionViewCell.identifier, for: indexPath) as! OffersCollectionViewCell
        offerCell.setup(with: offers[indexPath.row])
        return offerCell
        }else{
            let newArrivalCell = collectionView.dequeueReusableCell(withReuseIdentifier: NewArrivalCollectionViewCell.identifier, for: indexPath) as! NewArrivalCollectionViewCell
            newArrivalCell.setup(with: newArrivals[indexPath.row])
            return newArrivalCell
        }
    }
    
//    MARK: Setup Offer Cell
    func setupOfferCell() {
        for i in 1...offerImg.count{
            offers.append(OffersDetails(offerImg: offerImg[i - 1], offerPrecentage: offerLbl [i - 1], offerPromoCode: offerPromoCode [i - 1]))
        }
    }
    
    func registerOfferCell(in collectionView:UICollectionView){
        let nib = UINib(nibName: OffersCollectionViewCell.identifier, bundle: nil)
        collectionView.register(nib,forCellWithReuseIdentifier: OffersCollectionViewCell.identifier)
    }
    
//    MARK: Setup NewArrival Cell
    func setupNewArrivalCell(){
        for i in 1...productImg.count{
            newArrivals.append(NewArrivalDetails(productImg: productImg[i - 1], productPrice: productPrice[ i - 1], brandName: brandName [i - 1], productType:productType [i - 1] ))
        }
    }
    
    func registerNewArrivalCell(in collectionView:UICollectionView) {
        let nib = UINib(nibName: NewArrivalCollectionViewCell.identifier, bundle: nil)
        collectionView.register(nib,forCellWithReuseIdentifier: NewArrivalCollectionViewCell.identifier)
    }
    
}
