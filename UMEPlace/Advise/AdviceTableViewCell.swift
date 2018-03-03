//
//  AdviceTableViewCell.swift
//  UMEPlace
//
//  Created by Arjay Niones on 15/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class AdviceTableViewCell: UITableViewCell {

    @IBOutlet weak var viewCell: UIView!
    
    @IBOutlet weak var lblMyQuestion: UILabel!
    
    @IBOutlet weak var lblMyStoryBrief: UILabel!
    
    @IBOutlet weak var lblOthers: UILabel!
    
    @IBOutlet weak var lblTime: UILabel!
    
    @IBOutlet weak var lblGotAdvices: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
