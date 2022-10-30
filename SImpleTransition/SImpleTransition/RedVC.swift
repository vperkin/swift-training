//
//  ViewController.swift
//  SImpleTransition
//
//  Created by admin on 28.10.2022.
//

import UIKit

class RedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onRedToYellowTapped(_ sender: Any) {
        let vc = YellowVC()
        self.present(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: true)
        
    }
    
}

