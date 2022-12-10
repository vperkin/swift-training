//
//  DetailViewController.swift
//  TableWithCategories
//
//  Created by Vyacheslav Perkin on 09.12.2022.
//

import UIKit

class DetailViewController: UIViewController {
    var product: AppleProducts?
    
    

    
    @IBOutlet weak var lblAppleProduct:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblAppleProduct.text = "\(product?.productName ?? "product not found") is a \(product?.productCategory ?? "category not found")"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
