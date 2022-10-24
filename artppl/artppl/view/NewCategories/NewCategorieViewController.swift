//
//  NewCategorieView.swift
//  artppl
//
//  Created by ivan cardenas on 16/09/2022.
//

import UIKit

final class NewCategorieViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var newCategoryTxtField: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light 
        }
        
        self.newCategoryTxtField.delegate = self
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    @IBAction func actionClose(_ sender: Any) {
        dismiss(animated: true)
    }
}
extension NewCategorieViewController{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return newCategoryTxtField.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
