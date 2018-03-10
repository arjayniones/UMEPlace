//
//  LessonCommentTableViewCellMain.swift
//  UMEPlace
//
//  Created by Arjay Niones on 20/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class LessonCommentTableViewCellMain: UITableViewCell {

    
    @IBOutlet weak var lblNumber: UILabel!
    
    @IBOutlet weak var lblCommentByID: UILabel!
    
    @IBOutlet weak var lblDateTime: UILabel!
    
    @IBOutlet weak var btnThanks: UIButton!
    
    @IBOutlet weak var lblContent: UILabel!
    
    @IBOutlet weak var viewMainCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
