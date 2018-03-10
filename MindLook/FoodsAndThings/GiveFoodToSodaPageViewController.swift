//
//  GiveFoodToSodaPageViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 26/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class GiveFoodToSodaPageViewController: UIViewController {

     let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)
    
    
    
    @IBOutlet weak var imgSodaVid: UIImageView!
    
  
    @IBOutlet weak var btnTab1: HalfRoundButton!
    
    @IBOutlet weak var btnTab2: HalfRoundButton!
    
    
    @IBOutlet weak var btnTab3: HalfRoundButton!
    
    @IBOutlet weak var btnTab4: HalfRoundButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

 self.navigationItem.setHidesBackButton(true, animated:true);
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
    }
    
    
    
    @IBAction func backToHome(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func btnTab1Clicked(_ sender: HalfRoundButton) {
        
        self.btnTab1.backgroundColor = UIColor.white
        
        
        self.btnTab1.setTitleColor(darkBlue, for: .normal)
        
        self.btnTab2.backgroundColor = darkBlue
        
        self.btnTab2.setTitleColor(UIColor.white, for: .normal)
        
        self.btnTab3.backgroundColor = darkBlue
        
        self.btnTab3.setTitleColor(UIColor.white, for: .normal)
        
        self.btnTab4.backgroundColor = darkBlue
        
        self.btnTab4.setTitleColor(UIColor.white, for: .normal)
    }
    

    @IBAction func btnTab2Clicked(_ sender: HalfRoundButton) {
        
        self.btnTab1.backgroundColor = darkBlue
        
        self.btnTab1.setTitleColor(UIColor.white, for: .normal)
        
        self.btnTab2.backgroundColor = UIColor.white
        
        self.btnTab2.setTitleColor(darkBlue, for: .normal)
        
        self.btnTab3.backgroundColor = darkBlue
        
        self.btnTab3.setTitleColor(UIColor.white, for: .normal)
        
        self.btnTab4.backgroundColor = darkBlue
        
        self.btnTab4.setTitleColor(UIColor.white, for: .normal)
    }
    
    @IBAction func btnTab3Clicked(_ sender: HalfRoundButton) {
        
        self.btnTab1.backgroundColor = darkBlue
       
        self.btnTab1.setTitleColor(UIColor.white, for: .normal)
        
        self.btnTab2.backgroundColor = darkBlue
        
        self.btnTab2.setTitleColor(UIColor.white, for: .normal)
        
        self.btnTab3.backgroundColor = UIColor.white
        
        self.btnTab3.setTitleColor(darkBlue, for: .normal)
        
        self.btnTab4.backgroundColor = darkBlue
        
        self.btnTab4.setTitleColor(UIColor.white, for: .normal)
    }
    
    
    @IBAction func btnTab4Clicked(_ sender: HalfRoundButton) {
        
        self.btnTab1.backgroundColor = darkBlue
      
        self.btnTab1.setTitleColor(UIColor.white, for: .normal)
        
        self.btnTab2.backgroundColor = darkBlue
        
        self.btnTab2.setTitleColor(UIColor.white, for: .normal)
        
        self.btnTab3.backgroundColor = darkBlue
        
        self.btnTab3.setTitleColor(UIColor.white, for: .normal)
        
        self.btnTab4.backgroundColor = UIColor.white
        
        self.btnTab4.setTitleColor(darkBlue, for: .normal)
    }
    

}




