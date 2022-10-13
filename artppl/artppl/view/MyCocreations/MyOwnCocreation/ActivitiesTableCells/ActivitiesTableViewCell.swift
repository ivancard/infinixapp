//
//  ActivitiesTableViewCell.swift
//  artppl
//
//  Created by ivan cardenas on 12/10/2022.
//

import UIKit

class Comments {
    let user: String
    let comments: String
    
    init(user: String, comments: String) {
        self.user = user
        self.comments = comments
    }
}
class CommentSection {
    let tittle: String
    let comments: [Comments]
    var isOpen = true
    
    init(tittle: String, comments: [Comments], isOpen: Bool = false) {
        self.tittle = tittle
        self.comments = comments
        self.isOpen = isOpen
    }
}

class ActivitiesTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {
    
    
    private var comments = CommentSection(tittle: "Ocultar respuestas", comments: [
        Comments(user: "nicomartinez", comments: "Sos un crack!"),
        Comments(user: "gonza34", comments: "😍😍😍😍"),
    ], isOpen: true)
    
    @IBOutlet weak var commentsTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commentsTableView.configure(delegate: self, dataSource: self, cells: [ToggleCommentsTableViewCell.self])
        commentsTableView.register(UINib(nibName: "CommentsTableViewCell", bundle: nil), forCellReuseIdentifier: "CommentsTableViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = comments
        
        if section.isOpen {
            return section.comments.count + 1
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cellType: ToggleCommentsTableViewCell.self)
        
        if indexPath.row == 0 {
            cell.sectionTitle.text = "Ocultar respuestas (\(comments.comments.count))"
        } else {
            guard let tableCell = commentsTableView.dequeueReusableCell(withIdentifier: "CommentsTableViewCell", for: indexPath) as? CommentsTableViewCell else { return UITableViewCell()}
            
            tableCell.userLabel.text = comments.comments[indexPath.row - 1].user
            tableCell.commentLabel.text = comments.comments[indexPath.row - 1].comments
            return tableCell
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        comments.isOpen.toggle()
        tableView.reloadSections([indexPath.section], with: .none)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
}
