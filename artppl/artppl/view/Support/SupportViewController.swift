//
//  SupportViewController.swift
//  artppl
//
//  Created by ivan cardenas on 28/09/2022.
//

import UIKit

class SupportViewController: UIViewController {
    
    
    @IBOutlet weak var supportSuccess: UIView!
    @IBOutlet weak var supportRequestView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnClose(_ sender: Any) {
        dismiss(animated: false)
    }
    @IBAction func btnSend(_ sender: Any) {
        supportRequestView.isHidden.toggle()
        supportSuccess.isHidden.toggle()
    }
}
