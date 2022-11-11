//
//  CoCreationCollectionViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 22/09/2022.
//

import UIKit

final class CoCreationCollectionViewCell: UICollectionViewCell {

    var myNavigation: UINavigationController?
    
    @IBOutlet weak var imgCocreation: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgCocreation.layer.cornerRadius = 8
        imgCocreation.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

    @IBAction func btnMore(_ sender: Any) {
        myNavigation?.pushViewController(CocreationViewController(), animated: true)
    }
    @IBAction func btnParticipate(_ sender: Any) {
        let requestView = CocreationRequestViewController()
        requestView.modalPresentationStyle = .fullScreen
        myNavigation?.present(requestView, animated: true)
    }
}
