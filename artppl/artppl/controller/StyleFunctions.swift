//
//  StyleFunctions.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import Foundation
import UIKit

class StyleFunctions {
    
    public static func setGradientToAButton(button: UIButton){
        let colorGradientRight: UIColor = UIColor(named: "colorGradientRight") ?? UIColor.systemMint
        let colorGradientLeft: UIColor = UIColor(named: "colorGradientLeft") ?? UIColor.systemPurple
        
        let gradient = CAGradientLayer()
       
        gradient.colors = [colorGradientLeft.cgColor, colorGradientRight.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        gradient.frame = button.bounds
        
        button.layer.insertSublayer(gradient, at: 0 )
    }
}
