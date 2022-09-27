//
//  welcomeSliderView.swift
//  artppl
//
//  Created by ivan cardenas on 06/09/2022.
//

import UIKit

final class WelcomeSliderViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    private let lastPage = 2;
    
    var page: Int? {
        didSet {
            guard oldValue != self.page else {
              return
            }
            pageControl.currentPage = page ?? 0
            
            //Al llegar a la pagina 3 espera 2 segundos y direcciona a la vista de registro
            if(page == lastPage){
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                let homeView = RegisterViewController()
                self.navigationController?.pushViewController(homeView, animated: true)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
      let scrollViewWidth = scrollView.bounds.width
      self.page = Int(round(scrollView.contentOffset.x / scrollViewWidth))
    }
}
