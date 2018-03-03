//
//  SideMenuViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 8/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {

    @IBOutlet weak var profileImg: UIImageView!
    
    //acctions for side menu buttons invisible
    
   
    
    @IBOutlet weak var lblMyActivities: UILabel!
    
    @IBOutlet weak var lblBeFriendWithSoda: UILabel!
    
    @IBOutlet weak var lblMyAccount: UILabel!
    
    @IBOutlet weak var btnMindDiary: UIButton!
    
    
    //actions for side menu
    
    @IBAction func showMindDiary(_ sender: Any) {
         NotificationCenter.default.post(name: NSNotification.Name("ShowMindDiaryPage"), object: nil)
        
      NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
        
        toggleSideMenu()
    }
    
    @IBAction func showWLAChart(_ sender: Any) {
         NotificationCenter.default.post(name: NSNotification.Name("ShowWLAChartPage"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
        
        toggleSideMenu()
    }
    
    
    @IBAction func showAdvicesActivities(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowAdvicesActivitiesPage"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
        
        toggleSideMenu()
    }
    
    @IBAction func showLessonsActivities(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowLessonsActivitiesPage"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
        
        toggleSideMenu()
    }
    
    
    @IBAction func showGiveFoodToSoda(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowGiveFoodToSoda"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
        
        toggleSideMenu()
    }
    
    @IBAction func showGiveThingsToSoda(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowGiveThingsToSoda"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
        
        toggleSideMenu()
    }
    
    //to open and close side menu when navigated
     func toggleSideMenu() {
         NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    //Functions for Profile, Change Password and Change Language
    
  
    
    @IBAction func showAccountInfo(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
    }
    
    
    @IBAction func showSettings(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
    }
    
    @IBAction func showTutorialAndHelp(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
    }
    
    
    @IBAction func showAbout(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toggleSideMenu()
        self.profileImg.layer.cornerRadius = self.profileImg.frame.size.width / 2;
        self.profileImg.clipsToBounds = true;

        //properties for lables underline
        
        self.lblMyActivities.attributedText = NSAttributedString(string: "My Activities", attributes:
            [.underlineStyle: NSUnderlineStyle.styleSingle.rawValue])
        
        self.lblBeFriendWithSoda.attributedText = NSAttributedString(string: "Befriend with Soda", attributes:
            [.underlineStyle: NSUnderlineStyle.styleSingle.rawValue])
        
        self.lblMyAccount.attributedText = NSAttributedString(string: "My Account", attributes:
            [.underlineStyle: NSUnderlineStyle.styleSingle.rawValue])
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
