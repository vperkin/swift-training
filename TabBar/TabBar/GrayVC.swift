//
//  GrayVC.swift
//  TabBar
//
//  Created by admin on 05.11.2022.
//

import UIKit

class GrayVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appear Gray")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Dissapear Gray")
        super.viewWillDisappear(animated)
    }
    
    override func willMove(toParent parent: UIViewController?) {
        if parent == nil{print("!Destroy Gray!")}
    }

}
