//
//  MyStatusTableViewCell.swift
//  UMEPlace
//
//  Created by Arjay Niones on 28/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class MyStatusTableViewCell: UITableViewCell {

    
    @IBOutlet weak var viewCell: UIView!
    
    @IBOutlet weak var lblTime: UILabel!
    
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var imgLogo: UIImageView!
    
    @IBOutlet weak var lblContent: UILabel!
    
    @IBOutlet weak var imgLogo2: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
