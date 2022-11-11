//
//  ParticipantsViewController.swift
//  artppl
//
//  Created by ivan cardenas on 13/10/2022.
//

import UIKit

final class ParticipantsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let heightOfRow = CGFloat(230)
    
    @IBOutlet weak var participantsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Participantes"
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(named: "colorMain") ?? UIColor.purple]
        
        participantsTableView.configure(delegate: self, dataSource: self, cells: [ParticipantsTableViewCell.self])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cellType: ParticipantsTableViewCell.self)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        heightOfRow
    }
}
