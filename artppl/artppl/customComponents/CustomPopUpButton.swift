//
//  CustomPopUpButton.swift
//  artppl
//
//  Created by ivan cardenas on 26/09/2022.
//

import UIKit

class CustomPopUpButton: UIButton {


    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = layer.bounds.width / 2
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(named: "colorMain")?.cgColor
    }
}
