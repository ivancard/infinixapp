//
//  marketCollectionViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 20/09/2022.
//

import UIKit

class marketCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        image.layer.cornerRadius = 8
        image.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
