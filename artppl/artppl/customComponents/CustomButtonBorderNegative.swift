//
//  CustomButtonBorderNegative.swift
//  artppl
//
//  Created by ivan cardenas on 12/10/2022.
//

import UIKit

class CustomButtonBorderNegative: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 8
        backgroundColor = UIColor(named: "colorWhite")
        layer.borderColor = UIColor(named: "colorMain")?.cgColor
        layer.borderWidth = 2
        alpha = 1
        titleLabel?.textColor = UIColor(named: "colorMain")
        titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 14)
    }
}
