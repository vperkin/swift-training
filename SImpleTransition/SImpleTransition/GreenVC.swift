//
//  GreenVC.swift
//  SImpleTransition
//
//  Created by admin on 30.10.2022.
//

import UIKit

protocol GreenOutputProtocol:OutputProtocol {
    
}

class GreenVC: UIViewController, GreenOutputProtocol {
    var outputData: Any? = "Good bye! From Output protocol."
    var output: String = "Good bye!"

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
    
    //вызов сигвея
    @IBAction func onGoToRootByCallingSeague(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoroot", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appear Green")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Dissapear Green")
        super.viewWillDisappear(animated)
    }
    
    override func willMove(toParent parent: UIViewController?) {
        if parent == nil{print("Destroy Green")}
    }

}
