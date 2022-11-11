//
//  CocreationRequestViewController.swift
//  artppl
//
//  Created by ivan cardenas on 12/10/2022.
//

import UIKit

final class CocreationRequestViewController: UIViewController {

    @IBOutlet weak var requestSuccessView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
    }
    
    @IBAction func btnSubmitRequest(_ sender: Any) {
        requestSuccessView.isHidden.toggle()
    }
    @IBAction func btnClose(_ sender: Any) {
       dismiss(animated: true)
    }
}
