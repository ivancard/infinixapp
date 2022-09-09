//
//  personalTastesView.swift
//  artppl
//
//  Created by ivan cardenas on 08/09/2022.
//

import UIKit
import Lottie

class PersonalTastesView: UIViewController {
    let myAnimationView = AnimationView()
    
    @IBOutlet weak var btnPintura: UIButton!
    @IBOutlet weak var btnEscritura: UIButton!
    @IBOutlet weak var btnDibujo: UIButton!
    @IBOutlet weak var btnEscultura: UIButton!
    @IBOutlet weak var btnTeatro: UIButton!
    @IBOutlet weak var btnDanza: UIButton!
    @IBOutlet weak var btnTattoo: UIButton!
    @IBOutlet weak var btnMakeUp: UIButton!
    @IBOutlet weak var btnFotografia: UIButton!
    @IBOutlet weak var btnMusica: UIButton!
    @IBOutlet weak var btnCine: UIButton!
    @IBOutlet weak var btnDiseno: UIButton!
    @IBOutlet weak var btnCrafty: UIButton!
    
    
    @IBOutlet weak var stackIzquierda: UIStackView!
    
    @IBAction func actionBtnPintura(_ sender: UIButton) {
        myAnimationView.animation =  Animation.named("AnimationButton")
        
        
        
        myAnimationView.frame = CGRect(
            x:stackIzquierda.layer.position.x,
            y: stackIzquierda.layer.position.x,
            width: btnPintura.frame.size.width,
            height: btnPintura.frame.size.height
        )
        myAnimationView.contentMode = .scaleAspectFill
        myAnimationView.loopMode = .loop
        view.addSubview(myAnimationView)
        myAnimationView.play()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setAllBorders([
            btnPintura,
            btnEscritura,
            btnDibujo,
            btnEscultura,
            btnTeatro,
            btnDanza,
            btnTattoo,
            btnMakeUp,
            btnFotografia,
            btnMusica,
            btnCine,
            btnDiseno,
            btnCrafty
        ])
        
        
    }


    private func setAllBorders(_ buttons: [UIButton]){
        buttons.forEach { button in
            StyleFunctions.setBorder(button: button)
        }
    }

}
