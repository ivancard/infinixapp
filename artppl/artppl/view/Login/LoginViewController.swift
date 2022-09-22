//
//  loginView.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate{

    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBAction func actionLogin(_ sender: Any) {
        // Dirige a home
    }
    
    @IBAction func actionRegister(_ sender: Any) {
        self.navigationController?.pushViewController(RegisterViewController(), animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldEmail.delegate = self
        
        StyleFunctions.setGradientToAButton(button: loginButton)

    }
}

extension LoginViewController{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textFieldEmail.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
