//
//  personalTastesView.swift
//  artppl
//
//  Created by ivan cardenas on 08/09/2022.
//

import UIKit

class PersonalTastesViewController: UIViewController {
    
    var selectedButtons: Int8 = 0
    
    @IBOutlet weak var btnPintura: GradientAnimationButton!
    @IBOutlet weak var btnEscritura: GradientAnimationButton!
    @IBOutlet weak var btnDibujo: GradientAnimationButton!
    @IBOutlet weak var btnEscultura: GradientAnimationButton!
    @IBOutlet weak var btnMusica: GradientAnimationButton!
    @IBOutlet weak var btnCine: GradientAnimationButton!
    @IBOutlet weak var btnDiseno: GradientAnimationButton!
    @IBOutlet weak var btnCrafty: GradientAnimationButton!
    @IBOutlet weak var btnTeatro: GradientAnimationButton!
    @IBOutlet weak var btnDanza: GradientAnimationButton!
    @IBOutlet weak var btnTattoo: GradientAnimationButton!
    @IBOutlet weak var btnmakeUp: GradientAnimationButton!
    @IBOutlet weak var btnFotografia: GradientAnimationButton!
    
    @IBAction func actionBtnPintura(_ sender: Any) {
        confirmTwoSelected(button: btnPintura)
    }
    @IBAction func actionBtnEscritura(_ sender: Any) {
        confirmTwoSelected(button: btnEscritura)
    }
    @IBAction func actionBtnDibujo(_ sender: Any) {
        confirmTwoSelected(button: btnDibujo)
    }
    @IBAction func actionBtnEscultura(_ sender: Any) {
        confirmTwoSelected(button: btnEscultura)
    }
    @IBAction func actionBtnMusica(_ sender: Any) {
        confirmTwoSelected(button: btnMusica)
    }
    @IBAction func actionBtnCine(_ sender: Any) {
        confirmTwoSelected(button: btnCine)
    }
    @IBAction func actionBtnDiseno(_ sender: Any) {
        confirmTwoSelected(button: btnDiseno)
    }
    @IBAction func actionBtnCrafty(_ sender: Any) {
        confirmTwoSelected(button: btnCrafty)
    }
    @IBAction func actionBtnTeatro(_ sender: Any) {
        confirmTwoSelected(button: btnTeatro)
    }
    @IBAction func actionBtnDanza(_ sender: Any) {
        confirmTwoSelected(button: btnDanza)
    }
    @IBAction func actionBtnTattoo(_ sender: Any) {
        confirmTwoSelected(button: btnTattoo)
    }
    @IBAction func actionBtnMakeUp(_ sender: Any) {
        confirmTwoSelected(button: btnmakeUp)
    }
    @IBAction func actionBtnFotografia(_ sender: Any) {
        confirmTwoSelected(button: btnFotografia)
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
        self.navigationController?.setToolbarHidden(true, animated: true)
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
