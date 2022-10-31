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
        if let vc = YellowVC.initFromSb() {
            //self.present(UINavigationController(rootViewController: vc), animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //vc.modalPresentationStyle = .fullScreen
            //self.present(vc, animated: true)
        }
        
    }
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
    }
    @IBAction func unwindToRed(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
}

