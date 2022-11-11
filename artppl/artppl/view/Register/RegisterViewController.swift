//
//  registerView.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import UIKit

enum ErrorTypes: String {
    case emptyLabels = "Uno o mas campos estan vacios"
    case passwordSize = "La contraseña debe tener entre 6 y 10 caracteres"
    case passwordDoesntMatch = "Las contraseñas no coinciden"
}

final class RegisterViewController: UIViewController, UITextFieldDelegate {
    
    var errorMessage: ErrorTypes?
    
    var isPasswordVisible = false
    var isPasswordRepeatVisible = false
    
    //TextFields
    @IBOutlet weak var textFieldFullName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPhone: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldPasswordRepeat: UITextField!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textFieldFullName.delegate = self
    }
    override func viewDidAppear(_ animated: Bool) {
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.tintColor = .white
    }
    
    func validateForm() -> Bool{
        if textFieldFullName.text == "",
           textFieldEmail.text == "",
           textFieldPassword.text == "",
           textFieldPasswordRepeat.text == ""{
            errorMessage = .emptyLabels
            return false
        }
        if textFieldPassword.text!.count < 6 || textFieldPassword.text!.count > 10{
            errorMessage = .passwordSize
            return false
        }
        if textFieldPassword.text != textFieldPasswordRepeat.text {
            errorMessage = .passwordDoesntMatch
            return false
        }
        return true
    }
    
    func toggleIcon(_ sender: UIButton, visibilityState: Bool) {
        if visibilityState {
            sender.setImage(UIImage(named: "iconEyeClose"), for: .normal)
        } else {
            sender.setImage(UIImage(named: "iconEyeOpen"), for: .normal)
        }
    }
    
    func animate(){
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func actionBtnComenzar(_ sender: Any) {
        if validateForm(){
            self.navigationController?.pushViewController(ProfileSelectorViewController(), animated: true)
        } else {
            infoLabel.text = errorMessage?.rawValue
            animate()
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.infoLabel.text = ""
                self.animate()
            }
        }
        
    }
    
    
    
    @IBAction func togglePasswordVisibility(_ sender: UIButton) {
        toggleIcon(sender, visibilityState: isPasswordVisible)
        animate()
        textFieldPassword.isSecureTextEntry.toggle()
        isPasswordVisible.toggle()
    }
    
    @IBAction func togglePasswordRepeatVisibility(_ sender: UIButton) {
        toggleIcon(sender, visibilityState: isPasswordRepeatVisible)
        animate()
        textFieldPasswordRepeat.isSecureTextEntry.toggle()
        isPasswordRepeatVisible.toggle()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textFieldFullName.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

