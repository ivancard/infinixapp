//
//  EditProfileViewController.swift
//  artppl
//
//  Created by ivan cardenas on 17/10/2022.
//

import UIKit

final class EditProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Editar mi perfil"
    }
    @IBAction func btnCategoriesJob(_ sender: Any) {
        present(ArtisticWorkViewController(), animated: true)
    }
    
    @IBAction func btnCategoriesInterest(_ sender: Any) {
        present(PersonalTastesViewController(), animated: true)
    }
    @IBAction func selectorLocation(_ sender: Any) {
        let locationView = MyLocationViewController()
        locationView.modalPresentationStyle = .fullScreen
        present(locationView, animated: true)
    }
}
