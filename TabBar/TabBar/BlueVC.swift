//
//  BlueVC.swift
//  TabBar
//
//  Created by admin on 05.11.2022.
//

import UIKit

class BlueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Did load root Blue")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appear root Blue")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Dissapear root Blue")
        super.viewWillDisappear(animated)
    }

    @IBAction func unwindToBlue(_ unwindSegue: UIStoryboardSegue) {
        _ = unwindSegue.source
    }

}
