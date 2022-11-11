//
//  FilterSearchViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/10/2022.
//

import UIKit

final class FilterSearchViewController: UIViewController {

    @IBOutlet weak var minimumPopUpButton: UIButton!
    @IBOutlet weak var maximumPopUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setPopUpMinimumButton()
        setPopUpMaximumButton()
    }
    
    @IBAction func btnApply(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func setPopUpMinimumButton(){
        let optionClosure = { (action: UIAction) in
            print(action.title)
        }
        var prices: [UIAction] = [UIAction(title: "€0", state: .on, handler: optionClosure)]
        
        for price in 1...30 {
            prices.append(UIAction(title: "€\(price)", handler: optionClosure))
        }
        
        minimumPopUpButton.menu = UIMenu(children: prices)
        
        minimumPopUpButton.showsMenuAsPrimaryAction = true
//        minimumPopUpButton.changesSelectionAsPrimaryAction = true
    }
    
    func setPopUpMaximumButton(){
        let optionClosure = { (action: UIAction) in
            print(action.title)
        }
        
        var prices: [UIAction] = [UIAction(title: "€0", state: .on, handler: optionClosure)]
        
        for price in 1...30 {
            prices.append(UIAction(title: "€\(price)", handler: optionClosure))
        }
        
        maximumPopUpButton.menu = UIMenu(children: prices)
        
        maximumPopUpButton.showsMenuAsPrimaryAction = true
//        maximumPopUpButton.changesSelectionAsPrimaryAction = true
    }
}
