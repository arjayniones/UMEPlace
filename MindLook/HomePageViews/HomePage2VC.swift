//
//  HomePage2VC.swift
//  UMEPlace
//
//  Created by Arjay Niones on 7/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class HomePage2VC: UIViewController {
    
     let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)

    
    @IBOutlet weak var viewAdvice1: UIView!
    
    @IBOutlet weak var viewAdvice2: UIView!
    
    
    @IBOutlet weak var viewLesson1: UIView!
    
    @IBOutlet weak var viewLesson2: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.viewAdvice1.layer.cornerRadius = 10
        self.viewAdvice1.layer.borderColor = darkBlue.withAlphaComponent(1).cgColor
        self.viewAdvice1.layer.borderWidth = 5
        self.viewAdvice1.clipsToBounds = true
        
        
        self.viewAdvice2.layer.cornerRadius = 10
        self.viewAdvice2.layer.borderColor = UIColor.orange.withAlphaComponent(1).cgColor
        self.viewAdvice2.layer.borderWidth = 5
        self.viewAdvice2.clipsToBounds = true
        
        
        self.viewLesson1.layer.cornerRadius = 10
        self.viewLesson1.layer.borderColor = darkBlue.withAlphaComponent(1).cgColor
        self.viewLesson1.layer.borderWidth = 5
        self.viewLesson1.clipsToBounds = true
        
        
        self.viewLesson2.layer.cornerRadius = 10
        self.viewLesson2.layer.borderColor = UIColor.orange.withAlphaComponent(1).cgColor
        self.viewLesson2.layer.borderWidth = 5
        self.viewLesson2.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
