//
//  ArtNearCollectionViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 22/09/2022.
//

import UIKit

class ArtNearCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgArtNear: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgArtNear.layer.cornerRadius = 8
        imgArtNear.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
