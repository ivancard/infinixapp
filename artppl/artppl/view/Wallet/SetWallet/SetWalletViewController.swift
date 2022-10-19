//
//  SetWalletViewController.swift
//  artppl
//
//  Created by ivan cardenas on 18/10/2022.
//

import UIKit

class SetWalletViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Configurar billetera"
    }
    @IBAction func btnConfigure(_ sender: Any) {
        guard let twoViewsBack = navigationController?.viewControllers.filter({$0.isKind(of: MyTabViewController.self)}).first else {return}
        navigationController?.popToViewController(twoViewsBack, animated: true)
        navigationController?.pushViewController(NewMarketViewController(), animated: true)
    }
}
