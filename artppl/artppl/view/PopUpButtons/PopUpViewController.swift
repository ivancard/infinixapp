//
//  TestViewController.swift
//  artppl
//
//  Created by ivan cardenas on 26/10/2022.
//

import UIKit

final class PopUpViewController: UIViewController {
    
    @IBOutlet weak var btnMarket: CustomPopUpButton!
    @IBOutlet weak var btnPortfolio: CustomPopUpButton!
    @IBOutlet weak var btnCocreation: CustomPopUpButton!
    @IBOutlet weak var titleMarket: UILabel!
    @IBOutlet weak var titlePortfolio: UILabel!
    @IBOutlet weak var titleCocreation: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modalPresentationStyle = .overFullScreen
    }
    
    func entryAnimationPopUp(){
        btnPortfolio.alpha = 0
        btnMarket.alpha = 0
        btnCocreation.alpha = 0
        titleMarket.alpha = 0
        titleCocreation.alpha = 0
        titlePortfolio.alpha = 0
        
        UIView.animate(withDuration: 0.4, animations: {
            [self.btnPortfolio,
             self.btnMarket,
             self.btnCocreation,
             self.titlePortfolio,
             self.titleMarket,
             self.titleCocreation].forEach { button in
                button?.alpha = 0
            }
            
            self.btnPortfolio.transform = CGAffineTransform(translationX: 0, y: 100)
            self.titlePortfolio.transform = CGAffineTransform(translationX: 0, y: 100)
            self.btnMarket.transform = CGAffineTransform(translationX: 100, y: 100)
            self.titleMarket.transform = CGAffineTransform(translationX: 100, y: 100)
            self.btnCocreation.transform = CGAffineTransform(translationX: -100, y: 100)
            self.titleCocreation.transform = CGAffineTransform(translationX: -100, y: 100)
            
        }) {(completion) in
            UIView.animate(withDuration: 0.4, animations: {
                [self.btnPortfolio,
                 self.btnMarket,
                 self.btnCocreation,
                 self.titlePortfolio,
                 self.titleMarket,
                 self.titleCocreation].forEach { button in
                    button?.alpha = 1
                }
                [self.btnPortfolio,
                self.titlePortfolio,
                self.btnMarket,
                self.titleMarket,
                self.btnCocreation,
                 self.titleCocreation].forEach { button in
                    button?.transform = .identity
                }
            })
        }
    }
    
    private func outAnimationPopUp(){
        UIView.animate(withDuration: 0.2, animations: {
            [self.btnPortfolio,
             self.btnMarket,
             self.btnCocreation,
             self.titlePortfolio,
             self.titleMarket,
             self.titleCocreation].forEach { button in
                button?.alpha = 1
            }
            
            [self.btnPortfolio,
            self.titlePortfolio,
            self.btnMarket,
            self.titleMarket,
            self.btnCocreation,
             self.titleCocreation].forEach { button in
                button?.transform = .identity
            }
            
        }) {(completion) in
            UIView.animate(withDuration: 0.2, animations: {
                [self.btnPortfolio,
                 self.btnMarket,
                 self.btnCocreation,
                 self.titlePortfolio,
                 self.titleMarket,
                 self.titleCocreation].forEach { button in
                    button?.alpha = 0
                }
                
                self.btnPortfolio.transform = CGAffineTransform(translationX: 0, y: 100)
                self.titlePortfolio.transform = CGAffineTransform(translationX: 0, y: 100)
                self.btnMarket.transform = CGAffineTransform(translationX: 100, y: 100)
                self.titleMarket.transform = CGAffineTransform(translationX: 100, y: 100)
                self.btnCocreation.transform = CGAffineTransform(translationX: -100, y: 100)
                self.titleCocreation.transform = CGAffineTransform(translationX: -100, y: 100)
            })
        }
    }
    
    
    
    @IBAction func btnMarket(_ sender: Any) {
        let newMarketView = NewMarketViewController()
        newMarketView.modalPresentationStyle = .fullScreen
        present(newMarketView, animated: true)
    }
    @IBAction func btnCocreation(_ sender: Any) {
        let newCocreationView = NewCocreationViewController()
        newCocreationView.modalPresentationStyle = .fullScreen
        present(newCocreationView, animated: true)
    }
    func show(on viewController: UIViewController){
        view.subviews.forEach{
            $0.transform = .init(translationX: 0, y: view.frame.height)
        }
        
        viewController.present(self, animated: false, completion: {
            UIView.animate(
                withDuration: 0.4,
                delay: 0,
                usingSpringWithDamping: 0.8,
                initialSpringVelocity: 0.5,
                animations: { [weak self] in
                    self?.view.subviews.forEach{
                        $0.transform = .identity
                    }
                }
            )
        })
        
        entryAnimationPopUp()
    }
    
    @IBAction func btnHide(_ sender: Any) {
        
        outAnimationPopUp()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            self.dismiss(animated: true)
        }
    }
}

