//
//  registerView.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import UIKit

class RegisterView: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var itsAButton: UIButton!
    
    //TextFields
    @IBOutlet weak var textFieldFullName: UITextField!
    
    @IBAction func actionBtnComenzar(_ sender: Any) {
        self.navigationController?.pushViewController(PersonalTastesView(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        self.textFieldFullName.delegate = self
        
        StyleFunctions.setGradientToAButton(button: itsAButton)

    }
}

//Remueve el teclado en pantalla
extension RegisterView{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textFieldFullName.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
