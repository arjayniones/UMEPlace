//
//  ProfilePageViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 13/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class ProfilePageViewController: UIViewController {
    
    
    let darkBlue =  UIColor(red:0.04, green:0.36, blue:0.59, alpha:1.0)

    @IBOutlet weak var imgUser: UIImageView!
    
    @IBOutlet weak var btnEdit: UIButton!
    
    @IBOutlet weak var btnMale: UIButton!
    
    @IBOutlet weak var btnFemale: UIButton!
    
  
    @IBOutlet weak var scrollViewProfile: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.imgUser.layer.cornerRadius = self.imgUser.frame.size.width / 2;
         self.imgUser.clipsToBounds = true;
        
        
        self.btnMale.layer.borderWidth = 0.5
        self.btnMale.layer.borderColor = UIColor.gray.cgColor
        
        self.btnFemale.layer.borderWidth = 0.5
        self.btnFemale.layer.borderColor = UIColor.gray.cgColor
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnMaleClicked(_ sender: Any) {
        
        self.btnMale.backgroundColor = darkBlue
        self.btnMale.setTitleColor(UIColor.white, for: .normal)
        
        self.btnFemale.backgroundColor = UIColor.white
        self.btnFemale.setTitleColor(darkBlue, for: .normal)
        
        
    }
    
    @IBAction func btnFemaleClicked(_ sender: Any) {
        
        self.btnFemale.backgroundColor = darkBlue
        self.btnFemale.setTitleColor(UIColor.white, for: .normal)
        
        self.btnMale.backgroundColor = UIColor.white
        self.btnMale.setTitleColor(darkBlue, for: .normal)
    }
    
    
    @IBAction func btnCancelTapped(_ sender: Any) {
        
         _ = navigationController?.popViewController(animated: true)
    }
    
}
