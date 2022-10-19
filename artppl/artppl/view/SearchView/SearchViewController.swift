//
//  SearchViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/10/2022.
//

import UIKit

class SearchViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    @IBOutlet weak var searchCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myTextField = UITextField()
        myTextField.placeholder = "Ingrese Busqueda"
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        navigationItem.titleView = myTextField
        
        setItemsBar()
        
        searchCollectionView.configure(delegate: self, dataSource: self, cells: [ArteCollectionViewCell.self])
    }
    
    private func setItemsBar(){
        let filterButton = UIBarButtonItem(image: UIImage(named: "iconFilter"), style: .plain, target: self, action: #selector(filtersHandler))
        let searchButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(searchHandler))
        
        navigationItem.setRightBarButtonItems([filterButton, searchButton], animated: true)
    }
    
    private func setCellStyle(cell: UICollectionViewCell){
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = false
        cell.layer.shadowColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.80).cgColor
        cell.layer.shadowOpacity = 0.34
        cell.layer.shadowOffset = CGSize(width: 0, height: 3)
    }
    
    @objc func filtersHandler(){
        present(FilterSearchViewController(), animated: true)
    }
    
    @objc func searchHandler(){
        //TODO - search
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(cellType: ArteCollectionViewCell.self, at: indexPath)
        setCellStyle(cell: cell)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width:searchCollectionView.layer.bounds.width / 2.1, height: 250)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        22
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(MarketItemViewController(), animated: true)
    }
}
