//
//  RequestsViewController.swift
//  artppl
//
//  Created by ivan cardenas on 13/10/2022.
//

import UIKit

final class RequestsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var requestsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        requestsTableView.configure(delegate: self, dataSource: self, cells: [RequestsTableViewCell.self])
        
        title = "Solicitudes"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(named: "colorMain") ?? UIColor.purple]
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cellType: RequestsTableViewCell.self)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        230
    }
}
