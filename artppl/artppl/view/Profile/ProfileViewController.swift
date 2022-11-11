//
//  ProfileViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/09/2022.
//

import UIKit

final class ProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {

    var isMyProfile: Bool?
    
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
        
        setTypeOfProfile(isMyProfile ?? true)
        setNavItems()
        btnConectar.layer.borderColor = UIColor(named: "colorMain")?.cgColor
        
        portfolioCollectionView.configure(delegate: self, dataSource: self, cells: [PortfolioCollectionViewCell.self])
        marketCollectionView.configure(delegate: self, dataSource: self, cells: [MarketProfileCollectionViewCell.self])
        
        tabsScrollView.delegate = self
        
    }
    func setNavItems(){
        let shareButton = UIBarButtonItem(image: UIImage(named: "iconShare"), style: .plain, target: self, action: nil)
        navigationItem.setRightBarButton(shareButton, animated: true)
    }
    
    
    @IBAction func btnMarketTab(_ sender: Any) {
        let isSelected = true
        selectedTab(isSelected)
    }
    @IBAction func btnPortfolioTab(_ sender: Any) {
       let isSelected = false
        selectedTab(isSelected)
    }
    @IBAction func btnMyCocreations(_ sender: Any) {
        if isMyProfile ?? true {
            navigationController?.pushViewController(MyCocreationsViewController(), animated: true)
        } else {
            print("Conectar")
        }
    }
    
    private func setTypeOfProfile(_ isMyProfile: Bool){
        if !isMyProfile {
            btnConectar.setTitle("Conectar", for: UIControl.State())
        }
    }
    
    private func selectedTab(_ position: Bool){
        //Position, true para market, false para portfolio
        if position == true{
            constrainLineLeading.constant = lineSelectIndicator.layer.bounds.width
            btnMarket.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
            btnPortfolio.titleLabel?.font  = UIFont(name: "Montserrat-Regular", size: 18)
            tabsScrollView.setContentOffset(CGPoint(x: tabsScrollView.bounds.width, y: 0), animated: true)
        } else {
            constrainLineLeading.constant = 0
            btnMarket.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 18)
            btnPortfolio.titleLabel?.font  = UIFont(name: "Montserrat-Bold", size: 18)
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
//        return CGSize(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
        return CGSize(width: marketCollectionView.bounds.width / 2.3, height: marketCollectionView.bounds.width / 2.3)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.marketCollectionView {
            navigationController?.pushViewController(MarketItemViewController(), animated: true)
        }
    }
}
