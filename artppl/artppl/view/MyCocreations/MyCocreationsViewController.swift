//
//  MyCocreationsViewController.swift
//  artppl
//
//  Created by ivan cardenas on 12/10/2022.
//

import UIKit

final class MyCocreationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myCocreationTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Mis co-creaciones"
        
        myCocreationTableView.configure(delegate: self, dataSource: self, cells: [MyCocreationsTableViewCell.self])
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cellType: MyCocreationsTableViewCell.self)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        160
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(MyOwnCocreationViewController(), animated: true)
    }
}
