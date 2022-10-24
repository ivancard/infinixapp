//
//  HomeViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/09/2022.
//

import UIKit
import SideMenu

final class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var marketCollectionView: UICollectionView!
    @IBOutlet weak var artistCollectionView: UICollectionView!
    @IBOutlet weak var cocreationCollectionView: UICollectionView!
    @IBOutlet weak var artNearCollectionView: UICollectionView!
    
<<<<<<< HEAD
=======
    let marketViewCellIdentifier = "MarketCollectionViewCell"
    let artistViewCellIdentifier = "ArtistNearCollectionViewCell"
    let cocreationCellIdentifier = "CoCreationCollectionViewCell"
    let artNearCellIdentifier = "ArtNearCollectionViewCell"
    
>>>>>>> 2c4b74d2adf588b7b37f4c0b78e4e965fd9b61d8
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
    
    func togglePopUp(){
        popUpView.isHidden.toggle()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cellItem = UICollectionViewCell()
        
        if collectionView == self.marketCollectionView {
<<<<<<< HEAD
            cellItem = collectionView.dequeue(cellType: MarketCollectionViewCell.self, at: indexPath)
=======
            cellItem = collectionView.dequeueReusableCell(withReuseIdentifier: marketViewCellIdentifier, for: indexPath) as! MarketCollectionViewCell
>>>>>>> 2c4b74d2adf588b7b37f4c0b78e4e965fd9b61d8
        }
        
        if collectionView == self.artistCollectionView {
            cellItem = collectionView.dequeue(cellType: ArtistNearCollectionViewCell.self, at: indexPath)
        }
        
        if collectionView == self.cocreationCollectionView {
            cellItem = collectionView.dequeue(cellType: CoCreationCollectionViewCell.self, at: indexPath)
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
}
