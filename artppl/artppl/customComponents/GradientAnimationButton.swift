//
//  GradientAnimationButton.swift
//  artppl
//
//  Created by ivan cardenas on 16/09/2022.
//

import UIKit
import Lottie

final class GradientAnimationButton: UIButton {
    
    private let myAnimationView = AnimationView()
    
    
    var animationState: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        StyleFunctions.setBorder(button: self)
        StyleFunctions.setGradientPurpleToTransparent(view: self)
        
        setupAction()
    }
    
    private func setupAction() {
        myAnimationView.isUserInteractionEnabled = false
        addTarget(self, action: #selector(toggleAnimation(_:)), for: .touchUpInside)
    }
    
    @objc private func toggleAnimation(_ sender: UIButton) {
        if myAnimationView.isAnimationPlaying == true {
            myAnimationView.stop()
            myAnimationView.removeFromSuperview()
        }
            
        let animationToShow = !animationState ? "animationButton" : "animationButtonOff"
        myAnimationView.animation = Animation.named(animationToShow)
        
        myAnimationView.frame = CGRect(
                    x: 0,
                    y: 0,
                    width: self.layer.bounds.width,
                    height: self.layer.bounds.width)
            
        myAnimationView.contentMode = .scaleAspectFill
        insertSubview(myAnimationView, at: 0)
        //self.addSubview(myAnimationView)
        myAnimationView.play()
        
        animationState.toggle()
    }
}

