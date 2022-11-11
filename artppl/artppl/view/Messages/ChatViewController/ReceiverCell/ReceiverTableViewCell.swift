//
//  ReceiverTableViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 14/10/2022.
//

import UIKit

final class ReceiverTableViewCell: UITableViewCell {

    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var contentMessageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func configure(bodyMessage content: String, user: String, time: String){
        userLabel.text = user
        contentMessageLabel.text = content
        timeLabel.text = time
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
