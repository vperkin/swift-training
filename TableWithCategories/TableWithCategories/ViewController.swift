//
//  ViewController.swift
//  TableWithCategories
//
//  Created by Vyacheslav Perkin on 09.12.2022.
//

import UIKit

class AppleProducts{
    var productName: String?
    var prodctCategory: String?
    
    init(prName: String?, prCategory: String?) {
        self.productName = prName
        self.prodctCategory = prCategory
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "productstable")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "productstable")
        }
        cell?.textLabel?.text = productArray[indexPath.row].productName
        cell?.detailTextLabel?.text = productArray[indexPath.row].prodctCategory
        return cell!
    }
    
    //Delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
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
        
        let iPhone = AppleProducts(prName: "iMac", prCategory: "Phone")
        productArray.append(iPhone)
        
        let iPad = AppleProducts(prName: "iMac", prCategory: "Tablet")
        productArray.append(iPad)
        
        tblAppleProducts.dataSource = self
        tblAppleProducts.delegate = self

        
    }
}

