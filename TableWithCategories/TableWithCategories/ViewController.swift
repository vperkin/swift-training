//
//  ViewController.swift
//  TableWithCategories
//
//  Created by Vyacheslav Perkin on 09.12.2022.
//

import UIKit

class AppleProducts{
    var productName: String?
    var productCategory: String?
    
    init(prName: String?, prCategory: String?) {
        self.productName = prName
        self.productCategory = prCategory
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productstable") as! ProductTableViewCell
        
        cell.productLabel?.text = productArray[indexPath.row].productName
        cell.categoryLabel?.text = productArray[indexPath.row].productCategory
        
        return cell
    }
    
    func tableView(_ tableView: UITableView , heightForRowAt: IndexPath) -> CGFloat {
        return 60.0
    }
    
    //Delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        //tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showdetail", sender: self)
    }
    
    // чёрная магия!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController {
            destination.product = productArray[tblAppleProducts.indexPathForSelectedRow!.row]
        }
    }
    
    @IBOutlet weak var tblAppleProducts: UITableView!
    
    var productArray = [AppleProducts]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let macBook = AppleProducts(prName: "MacBook Pro", prCategory: "Laptop")
        productArray.append(macBook)
        
        let macBookAir = AppleProducts(prName: "MacBook Air", prCategory: "Laptop")
        productArray.append(macBookAir)
        
        let iMac = AppleProducts(prName: "iMac", prCategory: "Desktop")
        productArray.append(iMac)
        
        let iPhone = AppleProducts(prName: "iPhone", prCategory: "Phone")
        productArray.append(iPhone)
        
        let iPad = AppleProducts(prName: "iPad", prCategory: "Tablet")
        productArray.append(iPad)
        
        tblAppleProducts.dataSource = self
        tblAppleProducts.delegate = self

        
    }
}
