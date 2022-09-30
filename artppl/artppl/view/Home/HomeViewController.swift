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
    
    let marketViewCellIdentifier = "MarketCollectionViewCell"
    let artistViewCellIdentifier = "ArtistNearCollectionViewCell"
    let cocreationCellIdentifier = "CoCreationCollectionViewCell"
    let artNearCellIdentifier = "ArtNearCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artistCollectionView.register(UINib(nibName: artistViewCellIdentifier, bundle: nil), forCellWithReuseIdentifier: artistViewCellIdentifier)
        artistCollectionView.dataSource = self
        artistCollectionView.delegate = self
        
        marketCollectionView.register(UINib(nibName: marketViewCellIdentifier, bundle: nil), forCellWithReuseIdentifier: marketViewCellIdentifier)
        marketCollectionView.dataSource = self
        marketCollectionView.delegate = self
        
        cocreationCollectionView.register(UINib(nibName: cocreationCellIdentifier, bundle: nil), forCellWithReuseIdentifier: cocreationCellIdentifier)
        cocreationCollectionView.dataSource = self
        cocreationCollectionView.delegate = self
        
        artNearCollectionView.register(UINib(nibName: artNearCellIdentifier, bundle: nil), forCellWithReuseIdentifier: artNearCellIdentifier)
        artNearCollectionView.dataSource = self
        artNearCollectionView.delegate = self
    }
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @IBAction func toogleSideMenu(_ sender: Any) {
        let sideMenu = SideMenuViewController()
        let sideMenuController = SideMenuNavigationController(rootViewController: sideMenu)
        sideMenuController.leftSide = true
        sideMenuController.menuWidth = view.layer.bounds.width / 1.3
        sideMenuController.presentationStyle = .menuSlideIn
        present(sideMenuController, animated: true, completion: nil)
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
            cellItem = collectionView.dequeueReusableCell(withReuseIdentifier: marketViewCellIdentifier, for: indexPath) as! MarketCollectionViewCell
        }
        
        if collectionView == self.artistCollectionView {
            cellItem = collectionView.dequeueReusableCell(withReuseIdentifier: artistViewCellIdentifier, for: indexPath) as! ArtistNearCollectionViewCell
        }
        
        if collectionView == self.cocreationCollectionView {
            cellItem = collectionView.dequeueReusableCell(withReuseIdentifier: cocreationCellIdentifier, for: indexPath) as! CoCreationCollectionViewCell
        }
        
        if collectionView == self.artNearCollectionView {
            cellItem = collectionView.dequeueReusableCell(withReuseIdentifier: artNearCellIdentifier, for: indexPath) as! ArtNearCollectionViewCell
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
