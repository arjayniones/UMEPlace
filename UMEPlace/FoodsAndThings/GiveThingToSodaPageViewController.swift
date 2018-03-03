//
//  GiveThingToSodaPageViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 27/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class GiveThingToSodaPageViewController: UIViewController {

    
    @IBOutlet weak var imgSodaVid: UIImageView!
    
    
    @IBOutlet weak var btnTab1: HalfRoundButton!
    
    @IBOutlet weak var btnTab2: HalfRoundButton!
    
    
    @IBOutlet weak var btnTab3: HalfRoundButton!
    
    @IBOutlet weak var btnTab4: HalfRoundButton!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
    }

}
