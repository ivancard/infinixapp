//
//  CocreationViewController.swift
//  artppl
//
//  Created by ivan cardenas on 12/10/2022.
//

import UIKit

class CocreationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Maquillaje y emoción: obra de teatro en creación"
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(named: "colorMain") ?? UIColor.purple]
    }
    @IBAction func btnParticipar(_ sender: Any) {
        let requestPage = CocreationRequestViewController()
        requestPage.modalPresentationStyle = .fullScreen
        present(requestPage, animated: true)
    }
}
