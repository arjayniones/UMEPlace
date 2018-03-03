//
//  ShareLessonFeedTableViewCell.swift
//  UMEPlace
//
//  Created by Arjay Niones on 14/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class ShareLessonFeedTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMyLessonContent: UILabel!
    
    @IBOutlet weak var lblStoryInBrief: UILabel!
    
    @IBOutlet weak var lblOthers: UILabel!
    
    
    @IBOutlet weak var viewCell: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
