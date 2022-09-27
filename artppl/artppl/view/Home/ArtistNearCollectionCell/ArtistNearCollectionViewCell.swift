//
//  ArtistNearCollectionViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 22/09/2022.
//

import UIKit

final class ArtistNearCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgArtist: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imgArtist.layer.cornerRadius = 8
        imgArtist.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

}
