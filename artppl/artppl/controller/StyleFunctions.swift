//
//  StyleFunctions.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import Foundation
import UIKit

final class StyleFunctions {
    
    public static func setGradientTwo(view: UIView){
        let colorGradientRight: UIColor = UIColor(named: "colorGradient2Right") ?? UIColor.systemPink
        let colorGradientLeft: UIColor = UIColor(named: "colorGradient2Left") ?? UIColor.systemPurple
        view.addGradient(leftColor: colorGradientLeft, rightColor: colorGradientRight, startPoint: CGPoint(x: 0, y: 0.5), endPoint: CGPoint(x: 1, y: 0.5))
    }
    
    public static func setGradientToAButton(button: UIButton){
        let colorGradientRight: UIColor = UIColor(named: "colorGradientRight") ?? UIColor.green
        let colorGradientLeft: UIColor = UIColor(named: "colorGradientLeft") ?? UIColor.systemPurple
        
        button.addGradient(leftColor: colorGradientLeft, rightColor: colorGradientRight, startPoint: CGPoint(x: 0, y: 0.5), endPoint: CGPoint(x: 1, y: 0.5))
    }
    
     public static func setGradientToAButton(view: UIView){
         
        let colorGradientRight: UIColor = UIColor(named: "colorGradientRight") ?? UIColor.green
        let colorGradientLeft: UIColor = UIColor(named: "colorGradientLeft") ?? UIColor.systemPurple
        view.addGradient(leftColor: colorGradientLeft, rightColor: colorGradientRight, startPoint: CGPoint(x: 0, y: 0.5), endPoint: CGPoint(x: 1, y: 0.5))
    }

    public static func setBorder(button: UIButton){
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.layer.borderColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1).cgColor
        button.layer.borderWidth = 2
        button.alpha = 1
    }
    public static func setGradientPurpleToTransparent(view: UIView){
        let colorGradientRight: UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        let colorGradientLeft: UIColor = UIColor(named: "colorGradient2Left") ?? UIColor.systemPurple
        
        let gradient = CAGradientLayer()
       
        gradient.colors = [ colorGradientRight.cgColor, colorGradientLeft.cgColor,]
        
        gradient.frame = view.bounds
        
        view.layer.insertSublayer(gradient, at: 0 )
    }
    
    public static func setGradientWhiteToTransparent(view: UIView){
        let colorGradientRight: UIColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        let colorGradientLeft: UIColor = UIColor(named: "colorWhite") ?? UIColor.white
        
        let gradient = CAGradientLayer()
       
        gradient.colors = [ colorGradientRight.cgColor, colorGradientLeft.cgColor,]
        
        gradient.frame = view.bounds
        
        view.layer.insertSublayer(gradient, at: 0 )
    }
}
