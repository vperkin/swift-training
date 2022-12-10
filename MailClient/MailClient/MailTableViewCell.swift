//
//  MailTableViewCell.swift
//  MailClient
//
//  Created by Vyacheslav Perkin on 29.11.2022.
//

import UIKit

class MailTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
