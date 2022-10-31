//
//  GreenVC.swift
//  SImpleTransition
//
//  Created by admin on 30.10.2022.
//

import UIKit

class GreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBackTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onGoToRootTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: false)
    }
    
    
    @IBAction func onGoToRootByCallingSeague(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoroot", sender: self)
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
