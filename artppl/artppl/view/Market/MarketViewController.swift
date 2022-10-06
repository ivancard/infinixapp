//
//  MarketViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/09/2022.
//

import UIKit

final class MarketViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    @IBOutlet weak var arteCollectionView: UICollectionView!
    @IBOutlet weak var subastaCollectionview: UICollectionView!
    @IBOutlet weak var recycleCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arteCollectionView.configure(delegate: self, dataSource: self, cells: [ArteCollectionViewCell.self])
        subastaCollectionview.configure(delegate: self, dataSource: self, cells: [SubastaCollectionViewCell.self])
        recycleCollectionView.configure(delegate: self, dataSource: self, cells: [RecycleCollectionViewCell.self])
    }
    
    private func setCellStyle(cell: UICollectionViewCell){
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = false
        cell.layer.shadowColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.80).cgColor
        cell.layer.shadowOpacity = 0.34
        cell.layer.shadowOffset = CGSize(width: 0, height: 3)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if collectionView == self.arteCollectionView{
            cell = collectionView.dequeue(cellType: ArteCollectionViewCell.self, at: indexPath)
        }
        if collectionView == self.subastaCollectionview{
            cell = collectionView.dequeue(cellType: SubastaCollectionViewCell.self, at: indexPath)
        }
        if collectionView == self.recycleCollectionView{
            cell = collectionView.dequeue(cellType: RecycleCollectionViewCell.self, at: indexPath)
        }
        setCellStyle(cell: cell)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2.4, height: 249)
    }
}
