//
//  NewMarketViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/10/2022.
//

import UIKit

class NewMarketViewController: UIViewController {

    @IBOutlet weak var marketHeader: UIView!
    @IBOutlet weak var uploadPhotoContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setGradient(view: marketHeader)
        addDashedBorder(view: uploadPhotoContainer)
    }

    private func setGradient(view: UIView){
        let colorGradientRight: UIColor = UIColor(named: "colorGradientRight") ?? UIColor.systemMint
        let colorGradientLeft: UIColor = UIColor(named: "colorGradientLeft") ?? UIColor.systemPurple
        
        let gradient = CAGradientLayer()
       
        gradient.colors = [colorGradientLeft.cgColor, colorGradientRight.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        gradient.frame = view.bounds
        
        view.layer.insertSublayer(gradient, at: 0 )
    }
    
    func addDashedBorder(view: UIView) {
        let color = UIColor(named: "colorMain")?.withAlphaComponent(0.4).cgColor
            
        let shapeLayer:CAShapeLayer = CAShapeLayer()
        let frameSize = view.frame.size
        let shapeRect = CGRect(x: 0, y: 0, width: frameSize.width, height: frameSize.height)
        
        shapeLayer.bounds = shapeRect
        shapeLayer.position = CGPoint(x: frameSize.width/2, y: frameSize.height/2)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = color ?? UIColor.purple.cgColor
        shapeLayer.lineWidth = 2
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        shapeLayer.lineDashPattern = [6,3]
        shapeLayer.path = UIBezierPath(roundedRect: shapeRect, cornerRadius: 4).cgPath
        
        view.layer.addSublayer(shapeLayer)
        }
    @IBAction func btnPost(_ sender: Any) {
        let successScreen = SuccessViewController()
        successScreen.titleLabel = "Obra publicada con éxito"
        navigationController?.pushViewController(successScreen, animated: true)
    }
}
