//
//  personalTastesView.swift
//  artppl
//
//  Created by ivan cardenas on 08/09/2022.
//

import UIKit

final class PersonalTastesViewController: UIViewController {
    
    var selectedButtons: Int8 = 0
    
    let newCategory = NewCategorieViewController()
    
    @IBAction func actionBtn(_ sender: GradientAnimationButton) {
        confirmTwoSelected(button: sender)
    }
    
    @IBOutlet weak var btnComenzar: CustomButtonGradient!
    
    @IBAction func actionBtnComenzar(_ sender: Any) {
        //Dirige a Home
        self.navigationController?.pushViewController(ArtisticWorkViewController(), animated: true)
    }
    @IBAction func actionNewCategory(){
        newCategory.modalPresentationStyle = .fullScreen
        navigationController?.present(newCategory, animated: true)
        btnComenzar.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
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
