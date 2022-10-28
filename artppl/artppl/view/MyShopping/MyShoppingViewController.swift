//
//  MyShoppingViewController.swift
//  artppl
//
//  Created by ivan cardenas on 30/09/2022.
//

import UIKit

final class MyShoppingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var shoppingTableView: UITableView!
    
    let shoppingCellIdentifier = "ShoppingTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shoppingTableView.configure(delegate: self, dataSource: self, cells: [ShoppingTableViewCell.self])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeue(cellType: ShoppingTableViewCell.self)
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
