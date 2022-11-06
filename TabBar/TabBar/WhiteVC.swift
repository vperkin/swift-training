//
//  WhiteVC.swift
//  TabBar
//
//  Created by admin on 05.11.2022.
//

import UIKit

class WhiteVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appear White")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Dissapear White")
        super.viewWillDisappear(animated)
    }
    
    override func willMove(toParent parent: UIViewController?) {
        if parent == nil{print("!Destroy White!")}
    }

}
