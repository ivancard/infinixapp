//
//  NewCocreationViewController.swift
//  artppl
//
//  Created by ivan cardenas on 19/10/2022.
//

import UIKit

class NewCocreationViewController: UIViewController {

    @IBOutlet weak var uploadPhotoContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "CREAR COCREACION"
        addDashedBorder(view: uploadPhotoContainer)
    }
    
    @IBAction func btnCrear(_ sender: Any) {
        let successView = SuccessViewController()
        successView.titleLabel = "Cocreación creada con éxito"
        successView.subtitleLabel = "Chequea tu bandeja de mensaje por si fuiste seleccionada."
        navigationController?.pushViewController(successView, animated: true)
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

}
