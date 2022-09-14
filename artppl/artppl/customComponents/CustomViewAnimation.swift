//
//  CustomViewAnimation.swift
//  artppl
//
//  Created by ivan cardenas on 14/09/2022.
//


import UIKit
import Lottie

class CustomViewAnimation: UIView {
    
    let myAnimationView = AnimationView()
    
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
    }
     
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    func setup(){
        
    }
    
    func toggleAnimation(buttonState: Bool){
        if myAnimationView.isAnimationPlaying == true {
            myAnimationView.stop()
            myAnimationView.removeFromSuperview()
        }
            
        let animationToShow = buttonState ? "animationButton" : "animationButtonOff"
        myAnimationView.animation = Animation.named(animationToShow)
        
        myAnimationView.frame = CGRect(
                    x: 0,
                    y: 0,
                    width: 87,
                    height: 86)
            
        myAnimationView.contentMode = .scaleAspectFill
        self.addSubview(myAnimationView)
        myAnimationView.play()
    }
}
