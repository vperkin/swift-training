//
//  BrownVC.swift
//  TabBar
//
//  Created by admin on 05.11.2022.
//

import UIKit

class BrownVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appear Brown")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Dissapear Brown")
        super.viewWillDisappear(animated)
    }
    
    override func willMove(toParent parent: UIViewController?) {
        if parent == nil{print("!Destroy Brown!")}
    }

}
