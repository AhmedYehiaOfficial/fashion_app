//
//  OnBoardingVC.swift
//  Fashion
//
//  Created by Ahmed Yehia on 3/30/23.
//

import UIKit

class OnBoardingVC: ViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
  
    
    static let ID = String(describing: OnBoardingVC.self)
    
    @IBOutlet weak var onboardCollectioView: UICollectionView!
    
    @IBOutlet weak var pageController: UIPageControl!
        
    var slides: [OnboardingSliderDetails]=[]
    var currentPage = 0{
            didSet{
                pageController.currentPage = currentPage
                
            }
}
     let onboardingImg = ["onboarding1","onboarding2","onboarding3"]
    let onboardingTitle = ["20% Discount New Arrival Product","Take Advantage Of The Offer Shopping","All Types Offers Within Your Reach"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardCollectioView.delegate = self
        onboardCollectioView.dataSource = self
        
        registerCell(in: onboardCollectioView)
        setupData()

    }
    @IBAction func nextBtn(_ sender: Any) {
        if currentPage == slides.count - 1{
            print("Go to Next Page")
        }else{
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            onboardCollectioView.scrollToItem(at: indexPath, at: .right, animated: true)
        }
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onboardingTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(with: slides[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x/width)
        pageController.currentPage = currentPage
    }
    
// MARK: Setup splash and cell
    func setupData(){
        for i in 1...onboardingTitle.count{
            slides.append(OnboardingSliderDetails(image: onboardingImg[i - 1], title: onboardingTitle [i - 1]))
        }
        
    }
    
    func registerCell(in collectionView:UICollectionView){
        
        let nib = UINib(nibName: OnboardingCollectionViewCell.identifier, bundle: nil)
        
        collectionView.register(nib, forCellWithReuseIdentifier: OnboardingCollectionViewCell.identifier)
        
    }
}
