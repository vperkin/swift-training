//
//  YellowVC.swift
//  SImpleTransition
//
//  Created by admin on 30.10.2022.
//

import UIKit

class YellowVC: UIViewController {
    
    var number: Int? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        if let number = number {
            print("New number value is \(number)")
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appear Yellow")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Dissapear Yellow")
        super.viewWillDisappear(animated)
    }
    
    override func willMove(toParent parent: UIViewController?) {
        if parent == nil{print("!Destroy Yelow!")}
    }

}
