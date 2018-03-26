//
//  AccountPageViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 13/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class AccountPageViewController: UIViewController {

    
    @IBOutlet weak var btnChangeEmail: UIButton!
    
    @IBOutlet weak var btnChangePassword: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    @IBAction func btnCancelTapped(_ sender: Any) {
        
         _ = navigationController?.popViewController(animated: true)
    }
    
    
    
    
}
