//
//  CustomFilterOutlineButton.swift
//  artppl
//
//  Created by ivan cardenas on 20/10/2022.
//

import UIKit

class CustomFilterOutlineButton: UIButton {
    var isTouched: Bool = false
    
    override func awakeFromNib() {
        let buttonHeight = layer.bounds.height
        backgroundColor = UIColor(named: "colorWhite")
        setTitleColor(UIColor(named: "colorMain"), for: .normal)
        layer.borderColor = UIColor(named: "colorMain")?.cgColor
        layer.borderWidth = 1
        titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 14)
        layer.cornerRadius = buttonHeight / 2
        addTarget(self, action: #selector(toggleStyle), for: .touchUpInside)
    }
    
    @objc func toggleStyle(){
        if !isTouched {
            setTitleColor(UIColor(named: "colorWhite"), for: .normal)
            backgroundColor = UIColor(named: "colorMain")
            layer.borderWidth = 0
        } else {
            setTitleColor(UIColor(named: "colorMain"), for: .normal)
            backgroundColor = UIColor(named: "colorWhite")
            layer.borderWidth = 1
        }
        isTouched.toggle()
    }
}
