//
//  MainItemTableViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 11/10/2022.
//

import UIKit

final class MainItemTableViewCell: UITableViewCell {

    @IBOutlet weak var sectionTitle: UILabel!
    @IBOutlet weak var arrow: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
