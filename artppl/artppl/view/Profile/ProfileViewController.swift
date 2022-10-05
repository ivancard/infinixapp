//
//  ProfileViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/09/2022.
//

import UIKit

final class ProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var btnConectar: UIButton!
    @IBOutlet weak var portfolioCollectionView: UICollectionView!
    @IBOutlet weak var marketCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnConectar.layer.borderColor = UIColor(named: "colorMain")?.cgColor
        
        portfolioCollectionView.configure(delegate: self, dataSource: self, cells: [PortfolioCollectionViewCell.self])
        marketCollectionView.configure(delegate: self, dataSource: self, cells: [MarketProfileCollectionViewCell.self])
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
        return CGSize(width: 180, height: 180)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
}
