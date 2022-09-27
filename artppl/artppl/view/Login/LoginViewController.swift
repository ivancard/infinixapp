//
//  loginView.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import UIKit

final class LoginViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var textFieldEmail: UITextField!
    
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
