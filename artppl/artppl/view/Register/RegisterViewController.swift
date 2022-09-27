//
//  registerView.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import UIKit

final class RegisterViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var itsAButton: UIButton!
    
    //TextFields
    @IBOutlet weak var textFieldFullName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        self.textFieldFullName.delegate = self
        
        StyleFunctions.setGradientToAButton(button: itsAButton)
    }
    
    @IBAction func actionBtnComenzar(_ sender: Any) {
        self.navigationController?.pushViewController(PersonalTastesViewController(), animated: true)
    }
}

//Remueve el teclado en pantalla
extension RegisterViewController{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textFieldFullName.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
