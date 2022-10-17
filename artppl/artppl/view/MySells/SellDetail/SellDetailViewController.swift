//
//  SellDetailViewController.swift
//  artppl
//
//  Created by ivan cardenas on 15/10/2022.
//

import UIKit

class SellDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cuadro 120x289 cm"
    }


    @IBAction func btnSendMessagge(_ sender: Any) {
        navigationController?.pushViewController(ChatViewController(), animated: true)
    }
}
