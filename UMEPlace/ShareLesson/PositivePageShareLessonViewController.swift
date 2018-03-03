//
//  PositivePageShareLessonViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 12/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class PositivePageShareLessonViewController: UIViewController {

     let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)
    
    @IBOutlet weak var imgViewSoda: UIImageView!
    
    
    
    @IBOutlet weak var btnShareLesson: UIButton!
    
    @IBOutlet weak var viewSorry: UIView!
    @IBOutlet weak var viewShareLesson: UIView!
    @IBAction func showInputShareLesson(_ sender: Any) {
        
        //navigate from Main Home
        
        //must be pop up
        NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowInputPageShareLesson"), object: nil)
        
        
    }
    
    
    @IBOutlet weak var btnSorryMaybeLater: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        imgViewSoda.loadGif(name: "soda_hello")
        
        self.title = "Share Lesson?"

        self.viewSorry.layer.borderColor = darkBlue.withAlphaComponent(0.5).cgColor
        self.viewSorry.layer.borderWidth = 1
        
        self.viewShareLesson.layer.borderColor = darkBlue.withAlphaComponent(0.5).cgColor
        self.viewShareLesson.layer.borderWidth = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
        
    }
    
    @IBAction func BackToHome(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowHome"), object: nil)
    }
    
   

}
