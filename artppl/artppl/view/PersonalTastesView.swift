//
//  personalTastesView.swift
//  artppl
//
//  Created by ivan cardenas on 08/09/2022.
//

import UIKit
import Lottie

class PersonalTastesView: UIViewController {
    
    // Estados y animaciones de cada boton
    var buttonPinturaState = true
    let animationPintura = AnimationView()
    
    var buttonEscrituraState = true
    let animationEscritura = AnimationView()
    
    var buttonDibujoState = true
    let animationDibujo = AnimationView()
    
    var buttonEsculturaState = true
    let animationEscultura = AnimationView()
    
    var buttonTeatroState = true
    let animationTeatro = AnimationView()
    
    var buttonDanzaState = true
    let animationDanza = AnimationView()
    
    var buttonTattooState = true
    let animationTattoo = AnimationView()
    
    var buttonMakeUpState = true
    let animationMakeUp = AnimationView()
    
    var buttonFotografiaState = true
    let animationFotografia = AnimationView()
    
    var buttonMusicaState = true
    let animationMusica = AnimationView()
    
    var buttonCineState = true
    let animationCine = AnimationView()
    
    var buttonDisenoState = true
    let animationDiseno = AnimationView()
    
    var buttonCraftyState = true
    let animationCrafty = AnimationView()
    
    // Outlets of buttons
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
    
    // Views que contiene botones. Donde las animaciones seran insertadas.
    @IBOutlet weak var containerViewPintura: UIView!
    @IBOutlet weak var containerViewEscritura: UIView!
    @IBOutlet weak var containerViewDibujo: UIView!
    @IBOutlet weak var containerViewEscultura: UIView!
    @IBOutlet weak var containerViewTeatro: UIView!
    @IBOutlet weak var containerViewDanza: UIView!
    @IBOutlet weak var containerViewTattoo: UIView!
    @IBOutlet weak var containerViewMakeUp: UIView!
    @IBOutlet weak var containerViewFotografia: UIView!
    @IBOutlet weak var containerViewMusica: UIView!
    @IBOutlet weak var containerViewCine: UIView!
    @IBOutlet weak var containerViewDiseno: UIView!
    @IBOutlet weak var containerViewCrafty: UIView!
    
    
    // Lanzador de animaciones
    @IBAction func actionBtnPintura(_ sender: UIButton) {
        showAnimation(container: containerViewPintura, myAnimationView: animationPintura, isCheck: buttonPinturaState)
        buttonPinturaState = !buttonPinturaState
    }
    @IBAction func actionBtnEscritura(_ sender: Any) {
        showAnimation(container: containerViewEscritura, myAnimationView: animationEscritura, isCheck: buttonEscrituraState)
        buttonEscrituraState = !buttonEscrituraState
    }
    @IBAction func actionBtnDibujo(_ sender: Any) {
        showAnimation(container: containerViewDibujo, myAnimationView: animationDibujo, isCheck: buttonDibujoState )
        buttonDibujoState = !buttonDibujoState
    }
    @IBAction func actionBtnEscultura(_ sender: Any) {
        showAnimation(container: containerViewEscultura, myAnimationView: animationEscultura ,isCheck: buttonEsculturaState)
        buttonEsculturaState = !buttonEsculturaState
    }
    @IBAction func actionBtnTeatro(_ sender: Any) {
        showAnimation(container: containerViewTeatro, myAnimationView: animationTeatro, isCheck: buttonTeatroState)
        buttonTeatroState = !buttonTeatroState
    }
    @IBAction func actionBtnDanza(_ sender: Any) {
        showAnimation(container: containerViewDanza, myAnimationView: animationDanza, isCheck: buttonDanzaState)
        buttonDanzaState = !buttonDanzaState
    }
    @IBAction func actionBtnTattoo(_ sender: Any) {
        showAnimation(container: containerViewTattoo, myAnimationView: animationTattoo, isCheck: buttonTattooState)
        buttonTattooState = !buttonTattooState
    }
    @IBAction func actionBtnMakeUp(_ sender: Any) {
        showAnimation(container: containerViewMakeUp, myAnimationView: animationMakeUp, isCheck: buttonMakeUpState)
        buttonMakeUpState = !buttonMakeUpState
    }
    @IBAction func actionBtnFotografia(_ sender: Any) {
        showAnimation(container: containerViewFotografia, myAnimationView: animationFotografia, isCheck: buttonFotografiaState)
        buttonFotografiaState = !buttonFotografiaState
    }
    @IBAction func actionBtnMusica(_ sender: Any) {
        showAnimation(container: containerViewMusica, myAnimationView: animationMusica, isCheck: buttonMusicaState)
        buttonMusicaState = !buttonMusicaState
    }
    @IBAction func actionBtnCine(_ sender: Any) {
        showAnimation(container: containerViewCine, myAnimationView: animationCine, isCheck: buttonCineState)
        buttonCineState = !buttonCineState
    }
    @IBAction func actionBtnDiseno(_ sender: Any) {
        showAnimation(container: containerViewDiseno, myAnimationView: animationDiseno, isCheck: buttonDisenoState)
        buttonDisenoState = !buttonDisenoState
    }
    @IBAction func actionBtnCrafty(_ sender: Any) {
        showAnimation(container: containerViewCrafty, myAnimationView: animationCrafty, isCheck: buttonCraftyState)
        buttonCraftyState = !buttonCraftyState
    }
    
    @IBOutlet weak var gradientPintura: UIView!
    
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
        
        StyleFunctions.setGradientPurpleToTransparent(view: gradientPintura)
        
    }
    
    // Añade animacion a el view correspondiente de cada boton
    private func showAnimation(container: UIView, myAnimationView: AnimationView, isCheck: Bool){
        
        if myAnimationView.isAnimationPlaying == true {
            myAnimationView.stop()
            myAnimationView.removeFromSuperview()
        }
        
        let animationToShow = isCheck ? "animationButton" : "animationButtonOff"
        myAnimationView.animation = Animation.named(animationToShow)
        myAnimationView.frame = CGRect(
                x: 0,
                y: 0,
                width: btnPintura.frame.size.width,
                height: btnPintura.frame.size.height)
        
        myAnimationView.contentMode = .scaleAspectFill
            
        myAnimationView.play()
        
        container.addSubview(myAnimationView)
    }
    
    // Define el estilo de borde para los botones
    private func setAllBorders(_ buttons: [UIButton]){
        buttons.forEach { button in
            StyleFunctions.setBorder(button: button)
        }
    }

}
