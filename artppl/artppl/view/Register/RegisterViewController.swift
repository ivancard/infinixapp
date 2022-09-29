//
//  registerView.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import UIKit

final class RegisterViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var btnStart: UIButton!
    
    //TextFields
    @IBOutlet weak var textFieldFullName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textFieldFullName.delegate = self
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.tintColor = .white
        
        StyleFunctions.setGradientToAButton(button: btnStart)
    }
    
    @IBAction func actionBtnComenzar(_ sender: Any) {
        self.navigationController?.pushViewController(ProfileSelectorViewController(), animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textFieldFullName.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

