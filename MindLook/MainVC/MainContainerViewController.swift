//
//  MainContainerViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 16/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class MainContainerViewController: UIViewController {

    var isYellowPopUpShown = false
    @IBOutlet weak var viewYellowPopUp: UIView!
    
    @IBOutlet weak var viewSideMenuContainer: UIView!
    @IBOutlet weak var viewContainerMain: UIView!
    
    @IBOutlet weak var viewDarkView: UIView!
    
    //action for bottom menus
    
    @IBOutlet weak var viewBlackBackground: UIView!
    
    
    
    
    
    @objc func togglePopUp()
    {
        if isYellowPopUpShown == true {
            
            self.viewBlackBackground.isHidden = true
            self.viewYellowPopUp.isHidden = true
            
            self.isYellowPopUpShown = false
        }else {
            
            self.viewBlackBackground.isHidden = false
            self.viewYellowPopUp.isHidden = false
            
            self.isYellowPopUpShown = true
        }
        
    }
    
    
    
   
  
    
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    var sideMenuOpen = false
    
    
    
    @objc func toggleSideMenu(){
        
        //showBottomMenu()
        
        if sideMenuOpen{
            sideMenuOpen = false
            sideMenuConstraint.constant = -280
            
        }
        else{
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
            
        }
        UIView.animate(withDuration: 0.3){
            self.view.layoutIfNeeded()
        }
    }
    
    @objc func toggleSideMenuForHome(){
        
        if sideMenuOpen{
            sideMenuOpen = false
            sideMenuConstraint.constant = -280
            
            UIView.animate(withDuration: 0.3){
                self.view.layoutIfNeeded()
            }
        }
        
    }
    
    @IBAction func showShareLessonPageInput(_ sender: Any) {
        
        //navigate from Main Home
        
        //must be pop up
        
        self.togglePopUp()
        NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowInputPageShareLesson"), object: nil)
        
        
    }
    
    
    @IBAction func showAskAdvicePageInput(_ sender: Any) {
        
        self.togglePopUp()
        NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
        
        //navigate from Main Home
        NotificationCenter.default.post(name: NSNotification.Name("ShowInputPageAskAdvise"), object: nil)
        
        
    }
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.view.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        
        self.isYellowPopUpShown = false
        self.viewYellowPopUp.isHidden = true
        
        self.viewBlackBackground.isHidden = true
        
        let swipe = UIPanGestureRecognizer(target: self, action: #selector(self.handleSwipe(_:)))
        
        self.viewSideMenuContainer.addGestureRecognizer(swipe)
        
        viewSideMenuContainer.isUserInteractionEnabled = true
        
        //self.viewSideMenuContainer.addSubview(view)
        
        
        // Tap
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(togglePopUp))
        viewDarkView.addGestureRecognizer(tapGesture)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: Notification.Name("ToggleSideMenu"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenuForHome),
                                               name: Notification.Name("ToggleSideMenuForHome"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(togglePopUp),
                                               name: Notification.Name("TogglePopUp"),
                                               object: nil )
        
        
        
        
       
        
        
    }
    
    
    
    // function which is triggered when handleTap is called
    @objc func handleSwipe(_ sender: UIPanGestureRecognizer) {
        
        // handling code
        let translation = sender.translation(in: self.view).x
        
        if sender.state == .began || sender.state == .changed{
            
            
            
            if translation > 0 { //swipe right
                
                
                if self.sideMenuConstraint.constant < 0 {
                    
                    //                    UIView.animate(withDuration: 0.2, animations: {
                    //                        self.sideMenuConstraint.constant += translation / 10
                    //                        self.view.layoutIfNeeded()
                    //                    })
                    
                    
                }
                
                
                
            }else {              //swipe left
                
                
                if self.sideMenuConstraint.constant > -280 {
                    
                    UIView.animate(withDuration: 0.2, animations: {
                        //                        self.sideMenuConstraint.constant += translation / 10
                        self.sideMenuOpen = false
                        self.sideMenuConstraint.constant += translation
                        self.view.layoutIfNeeded()
                    })
                    
                    
                }
                
                
            }
            
        }
        
        
    }


}
