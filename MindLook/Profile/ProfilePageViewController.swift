//
//  ProfilePageViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 13/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class ProfilePageViewController: UIViewController {

    @IBOutlet weak var imgUser: UIImageView!
    
    @IBOutlet weak var btnEdit: UIButton!
    
    @IBOutlet weak var btnMale: UIButton!
    
    @IBOutlet weak var btnFemale: UIButton!
    
  
    @IBOutlet weak var scrollViewProfile: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.imgUser.layer.cornerRadius = self.imgUser.frame.size.width / 2;
         self.imgUser.clipsToBounds = true;
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
