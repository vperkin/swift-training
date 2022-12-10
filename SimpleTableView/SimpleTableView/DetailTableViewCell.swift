//
//  DetailTableViewCell.swift
//  SimpleTableView
//
//  Created by admin on 20.11.2022.
//

import UIKit

class DetailTableViewCell:UITableViewCell {
    let languageLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)

        languageLabel.textColor = .gray
        languageLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(languageLabel)
        languageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        languageLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        languageLabel.widthAnchor.constraint(equalToConstant: 100)
        languageLabel.heightAnchor.constraint(equalToConstant: 25)
    }
    required init?(coder: NSCoder) {
        super .init(coder: coder)
    }
    
    func setLanguage(language:String) {
        languageLabel.text = language
    }
}
