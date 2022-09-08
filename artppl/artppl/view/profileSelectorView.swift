//
//  profileSelectorView.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import UIKit

class profileSelectorView: UIViewController {

    
    @IBOutlet weak var shadowArtist: UIView!
    @IBOutlet weak var shadowLover: UIView!
    @IBOutlet weak var itemArtist: UIView!
    @IBOutlet weak var itemArtLover: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        StyleFunctions.setGradientToAButton(view: itemArtist)
        StyleFunctions.setGradientTwo(view: itemArtLover)
        
        shadowArtist.layer.shadowOpacity = 1
        shadowArtist.clipsToBounds = false
        shadowArtist.layer.shadowOffset = CGSize(width: 0, height: 0)
        shadowArtist.layer.shadowColor = UIColor(red: 0.00, green: 1.00, blue: 0.62, alpha: 0.30).cgColor
        
        shadowLover.layer.shadowOpacity = 1
        shadowLover.clipsToBounds = false
        shadowLover.layer.shadowOffset = CGSize(width: 0, height: 0)
        shadowLover.layer.shadowColor = UIColor(red: 1.00, green: 0.34, blue: 0.86, alpha: 0.47).cgColor
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
