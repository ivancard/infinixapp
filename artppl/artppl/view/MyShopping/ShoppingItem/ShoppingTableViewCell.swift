//
//  ShoppingTableViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 30/09/2022.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {

    @IBOutlet weak var containerViewCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerViewCell.layer.shadowColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.80).cgColor
        containerViewCell.layer.shadowOpacity = 0.34
        containerViewCell.layer.shadowOffset = CGSize(width: 0, height: 3)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
