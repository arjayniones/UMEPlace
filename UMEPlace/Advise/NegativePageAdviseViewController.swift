//
//  NegativePageAdviseViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 12/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class NegativePageAdviseViewController: UIViewController {

     let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)
    
    @IBOutlet weak var imgViewSoda: UIImageView!
    
    @IBOutlet weak var viewAskAdvice: UIView!
    
    @IBOutlet weak var btnAskAdvise: UIButton!
    
    @IBOutlet weak var viewSorry: UIView!
    @IBAction func showInputAskAdvise(_ sender: Any) {
        //navigate from Main Home
    
        NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowInputPageAskAdvise"), object: nil)
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        imgViewSoda.loadGif(name: "soda")
        
        self.title = "Ask for Advise?"

        self.viewSorry.layer.borderColor = darkBlue.withAlphaComponent(0.5).cgColor
        self.viewSorry.layer.borderWidth = 1
        
        self.viewAskAdvice.layer.borderColor = darkBlue.withAlphaComponent(0.5).cgColor
        self.viewAskAdvice.layer.borderWidth = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backToHome(_ sender: Any) {
         NotificationCenter.default.post(name: NSNotification.Name("ShowHome"), object: nil)
    }
    
   

}
