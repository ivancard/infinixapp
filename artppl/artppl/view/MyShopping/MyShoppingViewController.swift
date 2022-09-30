//
//  MyShoppingViewController.swift
//  artppl
//
//  Created by ivan cardenas on 30/09/2022.
//

import UIKit

class MyShoppingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var shoppingTableView: UITableView!
    
    let shoppingCellIdentifier = "ShoppingTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.tintColor = UIColor(named: "colorMain")
        shoppingTableView.register(UINib(nibName: shoppingCellIdentifier, bundle: nil), forCellReuseIdentifier: shoppingCellIdentifier)
        shoppingTableView.delegate = self
        shoppingTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let tableCell = shoppingTableView.dequeueReusableCell(withIdentifier: shoppingCellIdentifier, for: indexPath)
                        as? ShoppingTableViewCell else { return UITableViewCell() }
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
