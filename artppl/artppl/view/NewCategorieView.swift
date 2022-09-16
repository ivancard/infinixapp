//
//  NewCategorieView.swift
//  artppl
//
//  Created by ivan cardenas on 16/09/2022.
//

import UIKit

class NewCategorieView: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var frameTextView: UIView!
    @IBOutlet weak var newCategoryTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.newCategoryTxtField.delegate = self
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        frameTextView.layer.borderColor = UIColor(named: "colorFrameGray")?.cgColor
    }
}
extension NewCategorieView{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return newCategoryTxtField.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
