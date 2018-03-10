//
//  MessagesTableViewCell.swift
//  UMEPlace
//
//  Created by Arjay Niones on 15/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {

    @IBOutlet weak var btnContentID: UIButton!
    
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var lblUserID: UILabel!
    
    @IBOutlet weak var btnThanks: UIButton!
    
    @IBOutlet weak var btnDelete: UIButton!
    @IBOutlet weak var lblContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
