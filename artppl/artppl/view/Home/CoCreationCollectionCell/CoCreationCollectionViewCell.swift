//
//  CoCreationCollectionViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 22/09/2022.
//

import UIKit

class CoCreationCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgCocreation: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgCocreation.layer.cornerRadius = 8
        imgCocreation.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

}
