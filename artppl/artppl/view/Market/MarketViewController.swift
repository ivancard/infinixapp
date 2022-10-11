//
//  MarketViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/09/2022.
//

import UIKit

final class MarketViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    enum MarketTab {
        case arte
        case subasta
        case recycle
    }
    @IBOutlet weak var btnArteOutlet: UIButton!
    @IBOutlet weak var btnRecycledOutlet: UIButton!
    @IBOutlet weak var btnSubastaOutlet: UIButton!
    @IBOutlet weak var lineConstrain: NSLayoutConstraint!
    @IBOutlet weak var scrollViewMarket: UIScrollView!
    
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
    
    private func selectedTab(_ tab: MarketTab){
        if tab == .arte {
            scrollViewMarket.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
            lineConstrain.constant = 0
            
            btnArteOutlet.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 18)
            btnRecycledOutlet.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
            btnSubastaOutlet.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
            
        }
        if tab == .recycle{
            scrollViewMarket.setContentOffset(CGPoint(x: scrollViewMarket.bounds.width, y: 0), animated: false)
            lineConstrain.constant = btnArteOutlet.layer.bounds.width
            
            btnArteOutlet.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
            btnRecycledOutlet.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 18)
            btnSubastaOutlet.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
        }
        if tab == .subasta {
            scrollViewMarket.setContentOffset(CGPoint(x: scrollViewMarket.bounds.width * 2, y: 0), animated: false)
            lineConstrain.constant = btnArteOutlet.layer.bounds.width * 2
            
            btnArteOutlet.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
            btnRecycledOutlet.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
            btnSubastaOutlet.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 18)
        }
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    @IBAction func btnArte(_ sender: Any) {
        selectedTab(.arte)
    }
    @IBAction func btnRecycled(_ sender: Any) {
        selectedTab(.recycle)
    }
    @IBAction func btnSubasta(_ sender: Any) {
        selectedTab(.subasta)
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
        return CGSize(width: UIScreen.main.bounds.width / 2.38, height: 249)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        22
    }
}
