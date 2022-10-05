//
//  CustomButtonBorder.swift
//  artppl
//
//  Created by ivan cardenas on 14/09/2022.
//

import UIKit

class CustomButtonBorder: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }
    func setup(){
        StyleFunctions.setBorder(button: self)
    }
    
}
