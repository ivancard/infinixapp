//
//  registerView.swift
//  artppl
//
//  Created by ivan cardenas on 07/09/2022.
//

import UIKit

class registerView: UIViewController {

    
    @IBOutlet weak var itsAButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StyleFunctions.setGradientToAButton(button: itsAButton)

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
