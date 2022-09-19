//
//  personalTastesView.swift
//  artppl
//
//  Created by ivan cardenas on 08/09/2022.
//

import UIKit

class PersonalTastesView: UIViewController {
    
    // Estados de cada boton
    var buttonPinturaState = true
    var buttonEscrituraState = true
    var buttonDibujoState = true
    var buttonEsculturaState = true
    var buttonTeatroState = true
    var buttonDanzaState = true
    var buttonTattooState = true
    var buttonMakeUpState = true
    var buttonFotografiaState = true
    var buttonMusicaState = true
    var buttonCineState = true
    var buttonDisenoState = true
    var buttonCraftyState = true
    
    // Views donde las animaciones seran insertadas.
    @IBOutlet weak var containerViewPintura: CustomViewAnimation!
    @IBOutlet weak var containerViewEscritura: CustomViewAnimation!
    @IBOutlet weak var containerViewDibujo: CustomViewAnimation!
    @IBOutlet weak var containerViewEscultura: CustomViewAnimation!
    @IBOutlet weak var containerViewTeatro: CustomViewAnimation!
    @IBOutlet weak var containerViewDanza: CustomViewAnimation!
    @IBOutlet weak var containerViewTattoo: CustomViewAnimation!
    @IBOutlet weak var containerViewMakeUp: CustomViewAnimation!
    @IBOutlet weak var containerViewFotografia: CustomViewAnimation!
    @IBOutlet weak var containerViewMusica: CustomViewAnimation!
    @IBOutlet weak var containerViewCine: CustomViewAnimation!
    @IBOutlet weak var containerViewDiseno: CustomViewAnimation!
    @IBOutlet weak var containerViewCrafty: CustomViewAnimation!
    
    
    // Lanzador de animaciones
    @IBAction func actionBtnPintura(_ sender: UIButton) {
        containerViewPintura.toggleAnimation(buttonState: buttonPinturaState)
        buttonPinturaState = !buttonPinturaState
    }
    @IBAction func actionBtnEscritura(_ sender: Any) {
        containerViewEscritura.toggleAnimation(buttonState: buttonEscrituraState)
        buttonEscrituraState = !buttonEscrituraState
    }
    @IBAction func actionBtnDibujo(_ sender: Any) {
        containerViewDibujo.toggleAnimation(buttonState: buttonDibujoState)
        buttonDibujoState = !buttonDibujoState
    }
    @IBAction func actionBtnEscultura(_ sender: Any) {
        containerViewEscultura.toggleAnimation(buttonState: buttonEsculturaState)
        buttonEsculturaState = !buttonEsculturaState
    }
    @IBAction func actionBtnTeatro(_ sender: Any) {
        containerViewTeatro.toggleAnimation(buttonState: buttonTeatroState)
        buttonTeatroState = !buttonTeatroState
    }
    @IBAction func actionBtnDanza(_ sender: Any) {
        containerViewDanza.toggleAnimation(buttonState: buttonDanzaState)
        buttonDanzaState = !buttonDanzaState
    }
    @IBAction func actionBtnTattoo(_ sender: Any) {
        containerViewTattoo.toggleAnimation(buttonState: buttonTattooState)
        buttonTattooState = !buttonTattooState
    }
    @IBAction func actionBtnMakeUp(_ sender: Any) {
        containerViewMakeUp.toggleAnimation(buttonState: buttonMakeUpState)
        buttonMakeUpState = !buttonMakeUpState
    }
    @IBAction func actionBtnFotografia(_ sender: Any) {
        containerViewFotografia.toggleAnimation(buttonState: buttonFotografiaState)
        buttonFotografiaState = !buttonFotografiaState
    }
    @IBAction func actionBtnMusica(_ sender: Any) {
        containerViewMusica.toggleAnimation(buttonState: buttonMusicaState)
        buttonMusicaState = !buttonMusicaState
    }
    @IBAction func actionBtnCine(_ sender: Any) {
        containerViewCine.toggleAnimation(buttonState: buttonCineState)
        buttonCineState = !buttonCineState
    }
    @IBAction func actionBtnDiseno(_ sender: Any) {
        containerViewDiseno.toggleAnimation(buttonState: buttonDisenoState)
        buttonDisenoState = !buttonDisenoState
    }
    @IBAction func actionBtnCrafty(_ sender: Any) {
        containerViewCrafty.toggleAnimation(buttonState: buttonCraftyState)
        buttonCraftyState = !buttonCraftyState
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}