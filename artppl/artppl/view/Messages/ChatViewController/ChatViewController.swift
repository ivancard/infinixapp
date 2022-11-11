//
//  ChatViewController.swift
//  artppl
//
//  Created by ivan cardenas on 14/10/2022.
//

import UIKit

final class Messagges {
    let userIdentifier: String
    let isMine: Bool
    let messaggeContent: String
    let time: String
    
    init(userIdentifier: String, isMine: Bool, messaggeContent: String, time: String) {
        self.userIdentifier = userIdentifier
        self.isMine = isMine
        self.messaggeContent = messaggeContent
        self.time = time
    }
}

final class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var messagges = [
        Messagges(userIdentifier: "Tomas Gonzales", isMine: false, messaggeContent: "Hola Sofia como andas me encanta tus obras!", time: "08:30"),
        Messagges(userIdentifier: "", isMine: true, messaggeContent: "Gracias Tomas, vos tambien sos artista, fotografo...?", time: "09:45"),
        Messagges(userIdentifier: "Tomas Gonzales", isMine: false, messaggeContent: "Hola Sofia como andas me encanta tus obras!", time: "09:50"),
        Messagges(userIdentifier: "", isMine: true, messaggeContent: "Gracias Tomas, vos tambien sos artista, fotografo...?", time: "09:45"),
        Messagges(userIdentifier: "Tomas Gonzales", isMine: false, messaggeContent: "Hola Sofia como andas me encanta tus obras!", time: "09:50"),
        Messagges(userIdentifier: "", isMine: true, messaggeContent: "Gracias Tomas, vos tambien sos artista, fotografo...?", time: "09:45"),
        Messagges(userIdentifier: "Tomas Gonzales", isMine: false, messaggeContent: "Hola Sofia como andas me encanta tus obras!", time: "09:50"),
        Messagges(userIdentifier: "", isMine: true, messaggeContent: "Gracias Tomas, vos tambien sos artista, fotografo...?", time: "09:45"),
        Messagges(userIdentifier: "Tomas Gonzales", isMine: false, messaggeContent: "Hola Sofia como andas me encanta tus obras!", time: "09:50"),
        Messagges(userIdentifier: "", isMine: true, messaggeContent: "Gracias Tomas, vos tambien sos artista, fotografo...?", time: "09:45"),
        Messagges(userIdentifier: "Tomas Gonzales", isMine: false, messaggeContent: "Hola Sofia como andas me encanta tus obras!", time: "09:50"),
        Messagges(userIdentifier: "", isMine: true, messaggeContent: "Gracias Tomas, vos tambien sos artista, fotografo...?", time: "09:45"),
        Messagges(userIdentifier: "Tomas Gonzales", isMine: false, messaggeContent: "Hola Sofia como andas me encanta tus obras! Hola Sofia como andas me encanta tus obras! Hola Sofia como andas me encanta tus obras!", time: "09:50")
    ]
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var messaggesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollToBottom()
        title = "Tomas Gonzalez"
        
        sendButton.layer.cornerRadius = sendButton.layer.bounds.width / 2
        
        messaggesTableView.configure(delegate: self, dataSource: self, cells: [ReceiverTableViewCell.self])
        messaggesTableView.configure(delegate: self, dataSource: self, cells: [SenderTableViewCell.self])
     
    }
    
    func scrollToBottom(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.messagges.count-1, section: 0)
            self.messaggesTableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        messagges.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if messagges[indexPath.row].isMine {
            let cell = tableView.dequeue(cellType: SenderTableViewCell.self)
            cell.configure(bodyMessage: messagges[indexPath.row].messaggeContent, user: messagges[indexPath.row].userIdentifier, time: messagges[indexPath.row].time)
            return cell
        } else {
            let cell = tableView.dequeue(cellType: ReceiverTableViewCell.self)
            cell.configure(bodyMessage: messagges[indexPath.row].messaggeContent, user: messagges[indexPath.row].userIdentifier, time: messagges[indexPath.row].time)
            return cell
        }
    }
}
