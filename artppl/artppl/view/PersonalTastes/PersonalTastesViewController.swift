//
//  personalTastesView.swift
//  artppl
//
//  Created by ivan cardenas on 08/09/2022.
//

import UIKit

final class PersonalTastesViewController: UIViewController {
    
    var selectedButtons: Int8 = 0
    
    @IBAction func actionBtn(_ sender: GradientAnimationButton) {
        confirmTwoSelected(button: sender)
    }
    
    @IBOutlet weak var btnComenzar: CustomButtonGradient!
    
    @IBAction func actionBtnComenzar(_ sender: Any) {
        //Dirige a Home
        self.navigationController?.pushViewController(MyTabViewController(), animated: false)
    }
    @IBAction func actionNewCategory(){
        self.navigationController?.pushViewController(NewCategorieViewController(), animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func confirmTwoSelected(button: GradientAnimationButton){
        
        if !button.animationState {
            selectedButtons += 1
        } else {
            selectedButtons -= 1
        }

        if selectedButtons >= 2 {
            btnComenzar.isHidden = false
        }else{
            btnComenzar.isHidden = true
        }
    }
}
