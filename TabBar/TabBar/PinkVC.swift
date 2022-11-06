//
//  PinkVC.swift
//  TabBar
//
//  Created by admin on 05.11.2022.
//

import UIKit

class PinkVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Did load root Pink")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appear root Pink")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Dissapear root Pink")
        super.viewWillDisappear(animated)
    }
    
    @IBAction func unwindToBlue(_ unwindSegue: UIStoryboardSegue) {
        _ = unwindSegue.source
    }

}
