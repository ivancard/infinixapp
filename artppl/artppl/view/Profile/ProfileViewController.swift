//
//  ProfileViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/09/2022.
//

import UIKit

final class ProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {

    var page: Bool? {
        didSet {
            guard oldValue != self.page else {
              return
            }
            selectedTab(page!)
        }
    }
    
    @IBOutlet weak var tabsScrollView: UIScrollView!
    @IBOutlet weak var lineSelectIndicator: UIView!
    @IBOutlet weak var constrainLineLeading: NSLayoutConstraint!
    
    @IBOutlet weak var btnMarket: UIButton!
    @IBOutlet weak var btnPortfolio: UIButton!
    
    @IBOutlet weak var btnConectar: UIButton!
    @IBOutlet weak var portfolioCollectionView: UICollectionView!
    @IBOutlet weak var marketCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnConectar.layer.borderColor = UIColor(named: "colorMain")?.cgColor
        
        portfolioCollectionView.configure(delegate: self, dataSource: self, cells: [PortfolioCollectionViewCell.self])
        marketCollectionView.configure(delegate: self, dataSource: self, cells: [MarketProfileCollectionViewCell.self])
        
        tabsScrollView.delegate = self
    }
    
    @IBAction func btnMarketTab(_ sender: Any) {
        let isSelected = true
        selectedTab(isSelected)
    }
    @IBAction func btnPortfolioTab(_ sender: Any) {
       let isSelected = false
        selectedTab(isSelected)
    }
    
    private func selectedTab(_ position: Bool){
        //Position, true para market, false para portfolio
        if position == true{
            constrainLineLeading.constant = lineSelectIndicator.layer.bounds.width
            btnMarket.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 18)
            btnPortfolio.titleLabel?.font  = UIFont(name: "Montserrat-Bold", size: 18)
            tabsScrollView.setContentOffset(CGPoint(x: tabsScrollView.bounds.width, y: 0), animated: true)
        } else {
            constrainLineLeading.constant = 0
            btnMarket.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
            btnPortfolio.titleLabel?.font  = UIFont(name: "Montserrat-Regular", size: 18)
            tabsScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        }
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cellItem = UICollectionViewCell()
        
        if collectionView == self.portfolioCollectionView {
            cellItem = collectionView.dequeue(cellType: PortfolioCollectionViewCell.self, at: indexPath)
        }
        
        if collectionView == self.marketCollectionView {
            cellItem = collectionView.dequeue(cellType: MarketProfileCollectionViewCell.self, at: indexPath)
        }
        
        return cellItem
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2.4, height: UIScreen.main.bounds.width / 2.4)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
      let scrollViewWidth = scrollView.bounds.width
        self.page = Int(round(scrollView.contentOffset.x / scrollViewWidth)) == 1 ? true : false
    }
}
