//
//  SideMenuViewController.swift
//  artppl
//
//  Created by ivan cardenas on 27/09/2022.
//

import UIKit

class SideMenuViewController: UIViewController {
    
    @IBOutlet weak var imgProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgProfile.layer.borderColor = UIColor(named: "colorWhite")?.cgColor
        imgProfile.layer.borderWidth = 1
        imgProfile.layer.cornerRadius = imgProfile.layer.bounds.width / 2
        imgProfile.clipsToBounds = true
    }
    
    @IBAction func btnLogOut(_ sender: Any) {
        self.navigationController?.pushViewController(LoginViewController(), animated: true)
    }
    
    @IBAction func btnMySells(_ sender: Any) {
        navigationController?.pushViewController(MySellsViewController(), animated: true)
    }
    @IBAction func btnMyShopping(_ sender: Any) {
        self.navigationController?.pushViewController(MyShoppingViewController(), animated: true)
    }
    
    @IBAction func btnSupport(_ sender: Any) {
        let supportView = SupportViewController()
        supportView.modalPresentationStyle = .overFullScreen
        present(supportView, animated: false)
    }
    @IBAction func btnFavourites(_ sender: Any) {
        navigationController?.pushViewController(FavouritesViewController(), animated: true)
    }
}
