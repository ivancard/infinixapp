//
//  CustomButtonGradient.swift
//  artppl
//
//  Created by ivan cardenas on 15/09/2022.
//

import UIKit

class CustomButtonGradient: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        StyleFunctions.setGradientToAButton(button: self)
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
    }

}
