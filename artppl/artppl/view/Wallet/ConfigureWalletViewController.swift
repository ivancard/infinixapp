//
//  ConfigureWalletViewController.swift
//  artppl
//
//  Created by ivan cardenas on 18/10/2022.
//

import UIKit

final class ConfigureWalletViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Publicar"
    }
    @IBAction func btnConfigureWallet(_ sender: Any) {
        navigationController?.pushViewController(SetWalletViewController(), animated: true)
    }
    @IBAction func btnDismiss(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
