//
//  ArtistFavouritesViewController.swift
//  artppl
//
//  Created by ivan cardenas on 18/10/2022.
//

import UIKit

class ArtistFavouritesViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    @IBOutlet weak var favouriteArtistCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Favoritos - artistas"
        favouriteArtistCollectionView.configure(delegate: self, dataSource: self, cells: [FavouriteArtistCollectionViewCell.self])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(cellType: FavouriteArtistCollectionViewCell.self, at: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let side = favouriteArtistCollectionView.layer.bounds.width / 2.1
        return CGSize(width: side, height: side)
    }
}
