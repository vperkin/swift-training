//
//  DetailViewController.swift
//  SimpleTableView
//
//  Created by admin on 16.11.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var language:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        let languageLabel = UILabel()
        languageLabel.text = language
        languageLabel.textColor = .gray
        languageLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(languageLabel)
        languageLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        languageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        languageLabel.widthAnchor.constraint(equalToConstant: 100)
        languageLabel.heightAnchor.constraint(equalToConstant: 25)
        
    }


}
