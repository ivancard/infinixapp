//
//  personalTastesView.swift
//  artppl
//
//  Created by ivan cardenas on 08/09/2022.
//

import UIKit

class personalTastesView: UIViewController {

    @IBOutlet weak var btnPintura: UIButton!
    @IBOutlet weak var btnEscritura: UIButton!
    @IBOutlet weak var btnDibujo: UIButton!
    @IBOutlet weak var btnEscultura: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        StyleFunctions.setBorder(button: btnPintura)
        StyleFunctions.setBorder(button: btnEscritura)
        StyleFunctions.setBorder(button: btnDibujo)
        StyleFunctions.setBorder(button: btnEscultura)
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
