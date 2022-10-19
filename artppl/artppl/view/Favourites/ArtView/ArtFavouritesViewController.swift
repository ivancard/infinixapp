//
//  ArtFavouritesViewController.swift
//  artppl
//
//  Created by ivan cardenas on 18/10/2022.
//

import UIKit

class ArtFavouritesViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    @IBOutlet weak var favouriteArtCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Favoritos - arte"
        
        favouriteArtCollectionView.configure(delegate: self, dataSource: self, cells: [FavouriteArtCollectionViewCell.self])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeue(cellType: FavouriteArtCollectionViewCell.self, at: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let side = favouriteArtCollectionView.layer.bounds.width / 2.1
        return CGSize(width: side, height: side)
    }
}
