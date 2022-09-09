//
//  loginView.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import UIKit

class LoginView: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var textFieldEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldEmail.delegate = self
        
        StyleFunctions.setGradientToAButton(button: loginButton)

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoginView{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textFieldEmail.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
