//
//  MySellsViewController.swift
//  artppl
//
//  Created by ivan cardenas on 14/10/2022.
//

import UIKit

class MySellsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var sellsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Mis ventas"
        
        sellsTableView.configure(delegate: self, dataSource: self, cells: [SellTableViewCell.self])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cellType: SellTableViewCell.self)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(SellDetailViewController(), animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        145
    }
}
