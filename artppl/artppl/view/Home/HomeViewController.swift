//
//  HomeViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/09/2022.
//

import UIKit
import SideMenu

final class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let isMarketConfigured = false
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var marketCollectionView: UICollectionView!
    @IBOutlet weak var artistCollectionView: UICollectionView!
    @IBOutlet weak var cocreationCollectionView: UICollectionView!
    @IBOutlet weak var artNearCollectionView: UICollectionView!
    
    @IBOutlet weak var btnPortfolio: CustomPopUpButton!
    @IBOutlet weak var titlePortfolio: UILabel!
    @IBOutlet weak var btnMarket: CustomPopUpButton!
    @IBOutlet weak var titleMarket: UILabel!
    @IBOutlet weak var btnCocreation: CustomPopUpButton!
    @IBOutlet weak var titleCocreation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artistCollectionView.configure(delegate: self, dataSource: self, cells: [ArtistNearCollectionViewCell.self])
        
        marketCollectionView.configure(delegate: self, dataSource: self, cells: [MarketCollectionViewCell.self])
        
        cocreationCollectionView.configure(delegate: self, dataSource: self, cells: [CoCreationCollectionViewCell.self])
        
        artNearCollectionView.configure(delegate: self, dataSource: self, cells: [ArtNearCollectionViewCell.self])
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        if popUpView.isHidden == false {
            popUpView.isHidden = true
        }
    }
    
    @IBAction func btnNewCocreation(_ sender: Any) {
        navigationController?.pushViewController(NewCocreationViewController(), animated: true)
    }
    @IBAction func btnNewMarket(_ sender: Any) {
        let pathToRedirect = isMarketConfigured ? ConfigureWalletViewController() : ConfigureWalletViewController()
        navigationController?.pushViewController(pathToRedirect, animated: true)
    }
    private func setCellStyle(cell: UICollectionViewCell){
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = false
        cell.layer.shadowColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.80).cgColor
        cell.layer.shadowOpacity = 0.34
        cell.layer.shadowOffset = CGSize(width: 0, height: 3)
    }
    
    func togglePopUp(){
        popUpView.isHidden.toggle()
        entryAnimationPopUp()
    }
    
    private func entryAnimationPopUp(){
        btnPortfolio.alpha = 0
        btnMarket.alpha = 0
        btnCocreation.alpha = 0
        titleMarket.alpha = 0
        titleCocreation.alpha = 0
        titlePortfolio.alpha = 0
        popUpView.alpha = 0
        
        UIView.animate(withDuration: 0.2, animations: {
            [self.btnPortfolio,
             self.btnMarket,
             self.btnCocreation,
             self.titlePortfolio,
             self.titleMarket,
             self.titleCocreation,
             self.popUpView].forEach { button in
                button?.alpha = 0
            }
            
            self.btnPortfolio.transform = CGAffineTransform(translationX: 0, y: 100)
            self.titlePortfolio.transform = CGAffineTransform(translationX: 0, y: 100)
            self.btnMarket.transform = CGAffineTransform(translationX: 100, y: 100)
            self.titleMarket.transform = CGAffineTransform(translationX: 100, y: 100)
            self.btnCocreation.transform = CGAffineTransform(translationX: -100, y: 100)
            self.titleCocreation.transform = CGAffineTransform(translationX: -100, y: 100)
            
        }) {(completion) in
            UIView.animate(withDuration: 0.2, animations: {
                [self.btnPortfolio,
                 self.btnMarket,
                 self.btnCocreation,
                 self.titlePortfolio,
                 self.titleMarket,
                 self.titleCocreation,
                 self.popUpView ].forEach { button in
                    button?.alpha = 1
                }
                [self.btnPortfolio,
                self.titlePortfolio,
                self.btnMarket,
                self.titleMarket,
                self.btnCocreation,
                 self.titleCocreation].forEach { button in
                    button?.transform = .identity
                }
            })
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cellItem = UICollectionViewCell()
        
        if collectionView == self.marketCollectionView {
            cellItem = collectionView.dequeue(cellType: MarketCollectionViewCell.self, at: indexPath)
        }
        
        if collectionView == self.artistCollectionView {
            cellItem = collectionView.dequeue(cellType: ArtistNearCollectionViewCell.self, at: indexPath)
        }
        
        if collectionView == self.cocreationCollectionView {
            let fcellItem = collectionView.dequeue(cellType: CoCreationCollectionViewCell.self, at: indexPath)
            fcellItem.myNavigation = navigationController
            setCellStyle(cell: fcellItem)
            return fcellItem
        }
        
        if collectionView == self.artNearCollectionView {
            cellItem = collectionView.dequeue(cellType: ArtNearCollectionViewCell.self, at: indexPath)
        }
        
        setCellStyle(cell: cellItem)
        return cellItem
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var size = CGSize()
        if collectionView == self.marketCollectionView {
            let sizeWidth = UIScreen.main.bounds.width / 1.2
            let sizeHeight = CGFloat(377)
            size = CGSize(width: sizeWidth, height: sizeHeight)
        }
        if collectionView == self.artistCollectionView {
            let sizeWidth = UIScreen.main.bounds.width / 2.5
            let sizeHeight = CGFloat(208)
            size = CGSize(width: sizeWidth, height: sizeHeight)
        }
        if collectionView == self.cocreationCollectionView {
            let sizeWidth = UIScreen.main.bounds.width / 1.2
            let sizeHeight = CGFloat(416)
            size = CGSize(width: sizeWidth, height: sizeHeight)
        }
        if collectionView == self.artNearCollectionView {
            let sizeWidth = UIScreen.main.bounds.width / 2.5
            let sizeHeight = CGFloat(240)
            size = CGSize(width: sizeWidth, height: sizeHeight)
        }
        
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       20
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.marketCollectionView {
            self.navigationController?.pushViewController(MarketItemViewController(), animated: true)
        }
        if collectionView == self.cocreationCollectionView {
            self.navigationController?.pushViewController(CocreationViewController(), animated: true)
        }
        if collectionView == self.artistCollectionView {
            let profileView = ProfileViewController()
            profileView.isMyProfile = false
            self.navigationController?.pushViewController(profileView, animated: true)
        }
    }
}
