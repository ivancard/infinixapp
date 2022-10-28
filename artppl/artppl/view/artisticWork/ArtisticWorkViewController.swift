//
//  ArtisticWorkViewController.swift
//  artppl
//
//  Created by ivan cardenas on 29/09/2022.
//

import UIKit

final class ArtisticWorkViewController: UIViewController {

    var selectedButtons: Int8 = 0
    
    @IBOutlet weak var btnComenzar: CustomButtonGradient!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func actionBtn(_ sender: GradientAnimationButton){
        comfirmTwoSelected(button: sender)
    }
    @IBAction func actionBtnComenzar(_ sender: Any) {
        //Dirige a Home
        self.navigationController?.pushViewController(MyTabViewController(), animated: false)
    }
    func comfirmTwoSelected(button: GradientAnimationButton){
        
        if !button.animationState {
            selectedButtons += 1
        } else {
            selectedButtons -= 1
        }

        if selectedButtons >= 1 {
            btnComenzar.isHidden = false
        }else{
            btnComenzar.isHidden = true
        }
    }
}
