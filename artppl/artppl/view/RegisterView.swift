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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textFieldFullName.delegate = self
        
        StyleFunctions.setGradientToAButton(button: itsAButton)

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

//Remueve el teclado en pantalla
extension RegisterView{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textFieldFullName.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
