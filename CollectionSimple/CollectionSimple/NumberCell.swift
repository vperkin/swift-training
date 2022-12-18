//
//  NumberCell.swift
//  CollectionSimple
//
//  Created by Vyacheslav Perkin on 12.12.2022.
//

import UIKit

class NumberCell: UICollectionViewCell {
    @IBOutlet private var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.borderColor = UIColor.blue.cgColor
        self.contentView.layer.borderWidth = 2
    }
    
    func update(from number:Int){
        self.numberLabel.text = "\(number)"
    }
}
