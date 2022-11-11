//
//  SenderTableViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 14/10/2022.
//

import UIKit

final class SenderTableViewCell: UITableViewCell {

    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var contentMessaggeLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(bodyMessage content: String, user: String, time: String){
        userLabel.text = user
        contentMessaggeLabel.text = content
        timeLabel.text = time
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
