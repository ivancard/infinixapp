//
//  CustomFilledButton.swift
//  artppl
//
//  Created by ivan cardenas on 11/10/2022.
//

import UIKit

class CustomFilledButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 8
        backgroundColor = UIColor(named: "colorMain")
        alpha = 1
        titleLabel?.textColor = UIColor(named: "colorWhite")
        titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
    }
}
