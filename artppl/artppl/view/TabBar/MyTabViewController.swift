//
//  MyTabViewController.swift
//  artppl
//
//  Created by ivan cardenas on 26/09/2022.
//

import UIKit
import SideMenu

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
        setNavigationBar()
        title = "Home"
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationController?.navigationBar.tintColor = UIColor(named: "colorMain")
    }
    
    private func setNavigationBar(){
        
        let logo = UIImage(named: "logoHorizontal")
        let imageView = UIImageView(image:logo)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        
        let menuButton = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(toggleSideMenu))
        navigationItem.setLeftBarButton(menuButton, animated: true)
        
        setSearchBarButton()
    }
    
    @objc func toggleSideMenu(){
        let sideMenu = SideMenuViewController()
        let sideMenuController = SideMenuNavigationController(rootViewController: sideMenu)
        sideMenuController.leftSide = true
        sideMenuController.menuWidth = view.layer.bounds.width / 1.3
        sideMenuController.presentationStyle = .menuSlideIn
        present(sideMenuController, animated: true, completion: nil)
    }
    
    func setTabBar(){
        setViewControllers([v1, v2, v3, v4, v5], animated: true)
        tabBar.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        tabBar.layer.shadowOpacity = 0.34
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
        
        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            tabBarAppearance.backgroundColor = UIColor(named: "colorWhite")
            UITabBar.appearance().standardAppearance = tabBarAppearance
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
        
        let views = [v1, v2, v3, v4, v5]
        let icons = ["iconHome", "iconMarket", "iconAddNew" ,"iconChat", "iconProfile"]
        
        for view in 0..<views.count {
            views[view].tabBarItem = UITabBarItem(title: nil, image: UIImage(named: icons[view]), selectedImage: UIImage(named: icons[view]))
            views[view].tabBarItem.imageInsets = UIEdgeInsets(top: 6,left: 0,bottom: 0,right: 0)
        }
        
        tabBar.tintColor = UIColor(named: "colorMain")
        views[2].tabBarItem.imageInsets = UIEdgeInsets(top: -15, left: 0, bottom: 0, right: 0)
    }
    
    private func setSearchBarButton(){
        let _ = navigationItem.rightBarButtonItems?.popLast()
        let searchButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(searchButtonHandler))
        
        navigationItem.setRightBarButton(searchButton, animated: true)
    }
    
    private func setProfileBarButtons(){
        let editProfileButton = UIBarButtonItem(image: UIImage(systemName: "pencil.line"), style: .plain, target: self, action: #selector(editButtonHandler))
        let shareButton = UIBarButtonItem(image: UIImage(named: "iconShare"), style: .plain, target: self, action: nil)
        navigationItem.setRightBarButtonItems([editProfileButton,shareButton ], animated: true)
    }
    
    @objc func editButtonHandler(){
        navigationController?.pushViewController(EditProfileViewController(), animated: true)
    }
    
    @objc func searchButtonHandler(){
        navigationController?.pushViewController(SearchViewController(), animated: true)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        let tabbarIndex = tabBarController.viewControllers!.firstIndex(of: viewController)!
        
        if  tabbarIndex == 2 {
            
            let popUpButtons = PopUpViewController()
            popUpButtons.show(on: self)
            
            return false
        } else {
            return true
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if viewController == self.v5{
            setProfileBarButtons()
        } else {
            setSearchBarButton()
        }
    }
}
