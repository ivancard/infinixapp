//
//  HomeViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/09/2022.
//

import UIKit

class HomeViewController: UIViewController {

    let viewCellIdentifier = "marketCollectionViewCell"
    @IBOutlet weak var marketCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        marketCollectionView.dataSource = self
        marketCollectionView.delegate = self
        marketCollectionView.register(UINib(nibName: viewCellIdentifier, bundle: nil), forCellWithReuseIdentifier: viewCellIdentifier)
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let marketItem = collectionView.dequeueReusableCell(withReuseIdentifier: viewCellIdentifier, for: indexPath) as? marketCollectionViewCell else { return UICollectionViewCell()}
        marketItem.layer.cornerRadius = 8
        marketItem.clipsToBounds = false
        marketItem.layer.shadowColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.80).cgColor
        marketItem.layer.shadowOpacity = 0.34
        marketItem.layer.shadowOffset = CGSize(width: 0, height: 3)
        return marketItem
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let sizeWidth = UIScreen.main.bounds.width / 1.2
        let sizeHeight = UIScreen.main.bounds.height / 2.0
        return CGSize(width: sizeWidth, height: sizeHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        20
    }
}
