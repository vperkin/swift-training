//
//  ViewController.swift
//  SImpleTransition
//
//  Created by admin on 28.10.2022.
//

import UIKit

protocol IRedInput:InputProtocol {
    
}

class RedVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Did load Red")
        // Do any additional setup after loading the view.
    }

    @IBAction func onRedToYellowTapped(_ sender: Any) {
        if let vc = YellowVC.initFromSb() {
            //yellow не исчезает
            //self.present(UINavigationController(rootViewController: vc), animated: true)
            // yellow исчезает
            self.navigationController?.pushViewController(vc, animated: true)
            //всё в модальном окне и yellow не исчезает
            //vc.modalPresentationStyle = .fullScreen
            //self.present(vc, animated: true)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier, id == "redtoyellow" {
            if let vc = segue.destination as? YellowVC {
                vc.number = 100500
            }
        }
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
    }
    @IBAction func unwindToRed(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? GreenOutputProtocol {
            print(sourceViewController.outputData as Any)
        }
        // Use data from the view controller which initiated the unwind segue
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appear Red")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Dissapear Red")
        super.viewWillDisappear(animated)
    }
}

