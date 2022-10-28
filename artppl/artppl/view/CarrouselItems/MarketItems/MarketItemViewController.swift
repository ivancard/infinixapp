//
//  MarketItemViewController.swift
//  artppl
//
//  Created by ivan cardenas on 11/10/2022.
//

import UIKit

final class Section {
    let tittle: String
    let titleSpec: [String]
    let valueSpec: [String]
    var isOpen = false
    
    init(tittle: String, titleSpec: [String], valueSpec: [String], isOpen: Bool = false) {
        self.tittle = tittle
        self.titleSpec = titleSpec
        self.valueSpec = valueSpec
        self.isOpen = isOpen
    }
}

final class MarketItemViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {

    let numberOfsections = 1
    let heightOfRow = CGFloat(50)
    var isFavourite: Bool = false
    
    var ImagePage: Int? {
        didSet{
            guard oldValue != self.ImagePage else { return }
            imagePageControll.currentPage = ImagePage ?? 0
        }
    }
    
    @IBOutlet weak var imagePageControll: UIPageControl!
    @IBOutlet weak var imagesScrollView: UIScrollView!
    @IBOutlet weak var specsTableView: UITableView!
    @IBOutlet weak var separatorLine: UIView!
    
    private var specsSection = Section(tittle: "Ficha técnica obra",
        titleSpec: ["Campo artístico",  "Material", "Tamaño", "Enmarcado" ],
        valueSpec: ["Fotografia", "Impresión papel mate", "50 cm x 40 cm / Medium", "No"]
    )
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        specsTableView.configure(delegate: self, dataSource: self, cells: [MainItemTableViewCell.self])
        specsTableView.register(UINib(nibName: "SpecItemTableViewCell", bundle: nil), forCellReuseIdentifier: "SpecItemTableViewCell")
        
        title = "Slovenia I"
        separatorLine.layer.opacity = 0.2
           
        imagesScrollView.delegate = self
    }
    
    @IBAction func btnFavourite(_ sender: UIButton) {
        toggleFavourite(btn: sender)
    }
    @IBAction func btnShare(_ sender: Any) {
        //share product
    }
    
    private func toggleFavourite(btn: UIButton){
        isFavourite.toggle()
        btn.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(scale: .large), forImageIn: .normal)
        if isFavourite {
            btn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            btn.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
      let scrollViewWidth = scrollView.bounds.width
      self.ImagePage = Int(round(scrollView.contentOffset.x / scrollViewWidth))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfsections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = specsSection
        
        if section.isOpen {
            return section.titleSpec.count + 1
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cellType: MainItemTableViewCell.self)
        
        if indexPath.row == 0 {
            cell.sectionTitle.text = specsSection.tittle
            if specsSection.isOpen {
                cell.arrow.transform = CGAffineTransform(scaleX: 1, y: -1)
            } else {
                cell.arrow.transform = .identity
            }
            
        } else {
            guard let tableCell = specsTableView.dequeueReusableCell(withIdentifier: "SpecItemTableViewCell", for: indexPath) as? SpecItemTableViewCell else { return UITableViewCell()}
            
            tableCell.keyLabel.text = specsSection.titleSpec[indexPath.row - 1]
            tableCell.valueLabel.text = specsSection.valueSpec[indexPath.row - 1]
            return tableCell
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightOfRow
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        specsSection.isOpen.toggle()
        tableView.reloadSections([indexPath.section], with: .none)
    }
}
