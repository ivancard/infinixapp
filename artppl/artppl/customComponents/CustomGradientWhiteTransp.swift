//
//  CustomGradientWhiteTransp.swift
//  artppl
//
//  Created by ivan cardenas on 26/09/2022.
//

import UIKit

class CustomGradientWhiteTransp: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }
    func setup(){
        StyleFunctions.setGradientWhiteToTransparent(view: self)
    }

}
