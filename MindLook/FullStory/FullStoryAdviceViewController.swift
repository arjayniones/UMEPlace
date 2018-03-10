//
//  FullStoryAdviceViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 22/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class FullStoryAdviceViewController: UIViewController {
    
    @IBOutlet weak var viewTop: UIView!
    @IBOutlet weak var txtStory: UITextView!
    @IBOutlet weak var viewFullStory: UIView!
    
    @IBOutlet weak var txtContent: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewTop.layer.cornerRadius = 20
        self.viewTop.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewTop.layer.borderWidth = 1
        self.viewTop.clipsToBounds = true
        
        self.viewFullStory.layer.cornerRadius = 20
        self.viewFullStory.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewFullStory.layer.borderWidth = 1
        self.viewFullStory.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    
    @IBAction func goBack(_ sender: Any) {
        
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowAdviceDetailsPage"), object: nil)
    }
    
}
