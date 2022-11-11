//
//  GradientView.swift
//  artppl
//
//  Created by ivan cardenas on 26/10/2022.
//

import UIKit

@IBDesignable final class GradientView: UIView {
    
    @IBInspectable var leftColor: UIColor = .white
    @IBInspectable var rightColor: UIColor = .lightGray
    
    @IBInspectable var startPoint: CGPoint = .zero
    @IBInspectable var endPoint: CGPoint = .init(x: 1, y: 1)
    
    override func layoutSubviews() {
        addGradient(leftColor: leftColor,
                    rightColor: rightColor,
                    startPoint: startPoint,
                    endPoint: endPoint)
    }

}

extension UIView {
    
    func addGradient(leftColor: UIColor,
                     rightColor: UIColor,
                     startPoint: CGPoint,
                     endPoint: CGPoint) {
        let gradient = CAGradientLayer()
        
        gradient.colors = [leftColor.cgColor, rightColor.cgColor]
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        gradient.cornerRadius = 8
        gradient.frame = bounds
        
        layer.insertSublayer(gradient, at: 0)
    }
}
