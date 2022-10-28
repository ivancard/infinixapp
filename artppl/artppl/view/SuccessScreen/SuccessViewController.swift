//
//  SuccessViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/10/2022.
//

import UIKit

final class SuccessViewController: UIViewController {

    @IBOutlet weak var titleSuccess: UILabel?
    @IBOutlet weak var subTitleSuccess: UILabel?
    
    var titleLabel: String? = ""
    var subtitleLabel: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleSuccess?.text = titleLabel
        subTitleSuccess?.text = subtitleLabel
    }
    
    @IBAction func btnClose(_ sender: Any) {
        guard let twoViewsBack = navigationController?.viewControllers.filter({$0.isKind(of: MyTabViewController.self)}).first else {return}
        navigationController?.popToViewController(twoViewsBack, animated: true)
    }
}
