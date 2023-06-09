//
//  ArteCollectionViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 06/10/2022.
//

import UIKit

final class ArteCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imgCell.layer.cornerRadius = 8
        imgCell.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

}
