//
//  FavouritesViewController.swift
//  artppl
//
//  Created by ivan cardenas on 18/10/2022.
//

import UIKit

final class FavouritesViewController: UIViewController {

    @IBOutlet weak var favouriteArtContainer: UIView!
    @IBOutlet weak var favouriteArtistContainer: UIView!
    @IBOutlet weak var iconArtContainer: UIView!
    @IBOutlet weak var iconArtistContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Favoritos"
        
        for container in [favouriteArtContainer, favouriteArtistContainer]{
            guard let container else {return}
            setShadowToView(container)
        }
        for container in [iconArtContainer, iconArtistContainer]{
            guard let container else {return}
            setTopCornersRadius(container)
        }
    }
    
    func setShadowToView(_ view: UIView){
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 1)
        view.layer.shadowOpacity = 0.2
    }
    func setTopCornersRadius(_ view: UIView){
        view.layer.cornerRadius = 8
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    @IBAction func btnFavouriteArt(_ sender: Any) {
        navigationController?.pushViewController(ArtFavouritesViewController(), animated: true)
    }
    @IBAction func btnFavouriteArtist(_ sender: Any) {
        navigationController?.pushViewController(ArtistFavouritesViewController(), animated: true)
    }
}
