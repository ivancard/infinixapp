//
//  MyOwnCocreationViewController.swift
//  artppl
//
//  Created by ivan cardenas on 12/10/2022.
//

import UIKit

class MyOwnCocreationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    enum CocreationTab {
        case activity
        case gallery
    }
    
    @IBOutlet weak var greenLineConstrain: NSLayoutConstraint!
    @IBOutlet weak var btnActivityOutlet: UIButton!
    @IBOutlet weak var btnGalleryOutlet: UIButton!
    @IBOutlet weak var myOwncreationScrollTabs: UIScrollView!
    @IBOutlet weak var activitiesTableView: UITableView!
    @IBOutlet weak var galleryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activitiesTableView.configure(delegate: self, dataSource: self, cells: [ActivitiesTableViewCell.self])
        galleryCollectionView.configure(delegate: self, dataSource: self, cells: [CocreationGalleryCollectionViewCell.self])

    }
    private func selectedTab(_ tab: CocreationTab){
        if tab == .activity {
            myOwncreationScrollTabs.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
            
            greenLineConstrain.constant = 22
            
            btnActivityOutlet.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
            btnGalleryOutlet.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 18)
        }
        if tab == .gallery {
            myOwncreationScrollTabs.setContentOffset(CGPoint(x: myOwncreationScrollTabs.bounds.width, y: 0), animated: true)
            greenLineConstrain.constant = btnActivityOutlet.layer.bounds.width + 22
            
            btnActivityOutlet.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 18)
            btnGalleryOutlet.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
        }
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func btnActivity(_ sender: Any) {
        selectedTab(.activity)
    }
    @IBAction func btnGallery(_ sender: Any) {
        selectedTab(.gallery)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cellType: ActivitiesTableViewCell.self)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        360
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(cellType: CocreationGalleryCollectionViewCell.self, at: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2.38, height: 200)
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        22
//    }
}
