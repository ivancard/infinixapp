//
//  MyTabViewController.swift
//  artppl
//
//  Created by ivan cardenas on 26/09/2022.
//

import UIKit

final class MyTabViewController: UITabBarController, UITabBarControllerDelegate {

    let v1 = HomeViewController()
    let v2 = MarketViewController()
    let v3 = AddNewViewController()
    let v4 = MessaggesViewController()
    let v5 = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setTabBar()
    }
    
    func setTabBar(){
        
        setViewControllers([v1, v2, v3, v4, v5], animated: true)
        tabBar.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        tabBar.layer.shadowOpacity = 0.34
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
        
        tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        
        let views = [v1, v2, v3, v4, v5]
        
        let icons = ["iconHome", "iconMarket", "iconAddNew" ,"iconChat", "iconProfile"]
        
        for view in 0..<views.count {
            views[view].tabBarItem = UITabBarItem(title: nil, image: UIImage(named: icons[view]), selectedImage: UIImage(named: icons[view]))
            views[view].tabBarItem.imageInsets = UIEdgeInsets(top: 6,left: 0,bottom: 0,right: 0)
        }
                
        tabBar.tintColor = UIColor(named: "colorMain")
                
        views[2].tabBarItem.imageInsets = UIEdgeInsets(top: -15, left: 0, bottom: 0, right: 0)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        let tabbarIndex = tabBarController.viewControllers!.firstIndex(of: viewController)!
        
        if  tabbarIndex == 2 {
            v1.togglePopUp()
            return false
        } else {
            return true
        }
    }
}
