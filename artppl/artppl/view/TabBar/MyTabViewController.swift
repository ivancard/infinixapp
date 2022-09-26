//
//  MyTabViewController.swift
//  artppl
//
//  Created by ivan cardenas on 26/09/2022.
//

import UIKit

class MyTabViewController: UITabBarController, UITabBarControllerDelegate {

    let popUpView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    
    let v1 = HomeViewController()
    let v2 = MarketViewController()
    let v3 = AddNewViewController()
    let v4 = MessaggesViewController()
    let v5 = ProfileViewController()
    
    @IBOutlet weak var myTabBar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
       setTabBar()
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        let tabbarIndex = tabBarController.viewControllers!.firstIndex(of: viewController)!
        
        if  tabbarIndex == 2 {
            
            // If your view controller is emedded in a UINavigationController you will need to check if it's a UINavigationController and check that the root view controller is your desired controller (or subclass the navigation controller)
            
            v1.togglePopUp()
                
            return false
            
            } else {
                return true
            }
        }
    
    
    func setTabBar(){
        
        
        setViewControllers([v1, v2, v3, v4, v5], animated: true)
        tabBar.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        tabBar.layer.shadowOpacity = 0.34
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
        
        
        guard let items = tabBar.items else { return }
        
        let icons = ["iconHome", "iconMarket", "iconAddNew" ,"iconChat", "iconProfile"]
        
        for item in 0..<items.count {
            items[item].image = UIImage(named: icons[item])
            items[item].selectedImage = UIImage(named: icons[item])
            items[item].title = nil
            items[item].imageInsets = UIEdgeInsets(top: 6,left: 0,bottom: 0,right: 0)
        }
        tabBar.tintColor = UIColor(named: "colorMain")
        
        items[2].imageInsets = UIEdgeInsets(top: -10, left: 0, bottom: 0, right: 0)
        
        //items[2].isEnabled = false
    }
}
