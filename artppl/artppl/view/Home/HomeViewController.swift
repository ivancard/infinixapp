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
    
    @IBOutlet weak var marketCollectionView: UICollectionView!
    @IBOutlet weak var artistCollectionView: UICollectionView!
    @IBOutlet weak var cocreationCollectionView: UICollectionView!
    @IBOutlet weak var artNearCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artistCollectionView.configure(delegate: self, dataSource: self, cells: [ArtistNearCollectionViewCell.self])
        
        marketCollectionView.configure(delegate: self, dataSource: self, cells: [MarketCollectionViewCell.self])
        
        cocreationCollectionView.configure(delegate: self, dataSource: self, cells: [CoCreationCollectionViewCell.self])
        
        artNearCollectionView.configure(delegate: self, dataSource: self, cells: [ArtNearCollectionViewCell.self])
    }
    
    private func setCellStyle(cell: UICollectionViewCell){
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = false
        cell.layer.shadowColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.80).cgColor
        cell.layer.shadowOpacity = 0.34
        cell.layer.shadowOffset = CGSize(width: 0, height: 3)
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
