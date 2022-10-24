//
//  DequeuableRegistrable.swift
//  artppl
//
//  Created by ivan cardenas on 04/10/2022.
//

import UIKit

protocol Identificable   { static var  identifier: String { get } }
protocol NibInstanciable { static func nib() -> UINib }

extension UICollectionViewCell        : Identificable, NibInstanciable {}
extension UITableViewCell             : Identificable, NibInstanciable {}
extension UITableViewHeaderFooterView : Identificable, NibInstanciable {}

extension Identificable {
    static var identifier: String { return String.init(describing: Self.self) }
}

extension NibInstanciable where Self: Identificable {
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}

extension UICollectionView {
    
    func register<T:UICollectionViewCell>(cellType:T.Type)  {
        self.register(cellType.nib(), forCellWithReuseIdentifier: cellType.identifier)
    }
    
    func dequeue<T:UICollectionViewCell>(cellType:T.Type, at indexPath:IndexPath) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: cellType.identifier, for: indexPath) as! T
    }
    
    func dequeue<T:UICollectionViewCell>(cellType:T.Type, kind: String, at indexPath:IndexPath) -> T {
        return self.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: cellType.identifier, for: indexPath) as! T
    }
    
    func register(cells: [UICollectionViewCell.Type] = [], headers: [UICollectionViewCell.Type] = []) {
        for cell in cells {
            let nib = UINib(nibName: String(describing: cell.self), bundle: nil)
            self.register(nib, forCellWithReuseIdentifier: String(describing: cell.self))
        }
        
        for cell in headers {
            let nib = UINib(nibName: String(describing: cell.self), bundle: nil)
            self.register(
                nib,
                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: String(describing: cell.self)
            )
        }
    }
    
    func configure(delegate: UICollectionViewDelegateFlowLayout, dataSource: UICollectionViewDataSource, cells: [UICollectionViewCell.Type], headers: [UICollectionViewCell.Type] = []) {
        self.delegate = delegate
        self.dataSource = dataSource
        
        register(cells: cells, headers: headers)
    }
}

extension UITableView {
    
    func register(cells: [UITableViewCell.Type], headers: [UITableViewHeaderFooterView.Type] = [])  {
        for cell in cells {
            let nib = UINib(nibName: String(describing: cell.self), bundle: nil)
            self.register(nib, forCellReuseIdentifier: String(describing: cell.self))
        }
        
        for header in headers {
            let nib = UINib(nibName: String(describing: header.self), bundle: nil)
            self.register(nib, forHeaderFooterViewReuseIdentifier: String(describing: header.self))
        }
    }
    
    func dequeue<T:UITableViewCell>(cellType:T.Type) -> T {
        return self.dequeueReusableCell(withIdentifier: cellType.identifier) as! T
    }
    
    func register<T:UITableViewHeaderFooterView>(headerType:T.Type) {
        self.register(headerType.nib(), forHeaderFooterViewReuseIdentifier: headerType.identifier)
    }
    
    func dequeue<T:UITableViewHeaderFooterView>(headerType:T.Type) -> T {
        return self.dequeueReusableHeaderFooterView(withIdentifier: headerType.identifier) as! T
    }
    
    func configure(delegate: UITableViewDelegate, dataSource: UITableViewDataSource, cells: [UITableViewCell.Type], headers: [UITableViewHeaderFooterView.Type] = []) {
        self.delegate = delegate
        self.dataSource = dataSource
        
        register(cells: cells, headers: headers)
    }
}
