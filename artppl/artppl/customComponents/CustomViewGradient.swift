//
//  CustomViewGradient.swift
//  artppl
//
//  Created by ivan cardenas on 14/09/2022.
//

import UIKit

class CustomViewGradient: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
    }
     
    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }
    func setup(){
        StyleFunctions.setGradientToAButton(view: self)
    }
}
