//
//  AdviceDetailsViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 15/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class AdviceDetailsViewController: UIViewController {

   
    @IBOutlet weak var viewAdviceDetails: UIView!
    @IBOutlet weak var lblAskedByID: UILabel!
    
  
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var lblMyQuestion: UILabel!
    
    @IBOutlet weak var lblMyStoryBrief: UILabel!
    
    @IBOutlet weak var btnGaveThanks: UIButton!
    
    @IBOutlet weak var btnAskedTime: UIButton!
    
    @IBOutlet weak var btnSeeAdvices: UIButton!
    
    @IBOutlet weak var btnSeeFullStory: UIButton!
    
    @IBOutlet weak var btnTags: UIButton!
    
    
    @IBOutlet weak var viewAssessment: UIView!
    @IBOutlet weak var lblSelfAssessment: UILabel!
    
    @IBOutlet weak var lblStatus: UILabel!
    
    @IBOutlet weak var imgStatus1: UIImageView!
    @IBOutlet weak var lblStatus1: UILabel!
    
    @IBOutlet weak var lblStatus2: UILabel!
    @IBOutlet weak var imgStatus2: UIImageView!
    
    @IBOutlet weak var lblStoryStatus: UILabel!
    
    @IBOutlet weak var lblStoryStatus1: UILabel!
    @IBOutlet weak var imgStoryStatus1: UIImageView!
    
    @IBOutlet weak var lblStoryStatus2: UILabel!
    @IBOutlet weak var imgStoryStatus: UIImageView!
    
    @IBOutlet weak var lblRootCause: UILabel!
    
    @IBOutlet weak var lblRootCause1: UILabel!
    @IBOutlet weak var imgRootCause1: UIImageView!
    
    @IBOutlet weak var txtWriteComment: UITextField!
    
    @IBOutlet weak var btnSend: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        //viewadvice properies
        self.viewAdviceDetails.layer.cornerRadius = 20
        
        
        self.viewAdviceDetails.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewAdviceDetails.layer.borderWidth = 1
        
        self.viewAdviceDetails.clipsToBounds = true
        
        //        self.viewLessonsDetails.layer.shadowColor = UIColor.black.cgColor
        //        self.viewLessonsDetails.layer.shadowRadius = 3.0
        //        self.viewLessonsDetails.layer.shadowOpacity = 1.0
        //        self.viewLessonsDetails.layer.shadowOffset = CGSize(width: 4, height: 4)
        //        self.viewLessonsDetails.layer.masksToBounds = false
        
        
        
        //view self assessment properties
        
        self.viewAssessment.layer.cornerRadius = 20
        self.viewAssessment.clipsToBounds = true
        
        let darkblue = UIColor(red:0.15, green:0.37, blue:0.64, alpha:1.0)
        
        self.viewAssessment.layer.borderColor = darkblue.cgColor
        
        self.viewAssessment.layer.borderWidth = 2
        
        
        
        
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func goBack(_ sender: Any) {
        
        //          _ = navigationController?.popViewController(animated: true)
        
        
        //back to Share lesson feeds
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowAdvise"), object: nil)
    }
    
    
    @IBAction func seeAdvices(_ sender: Any) {
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowPeoplesAdvicesPage"), object: nil)
    }
    
    @IBAction func seeFullStory(_ sender: Any) {
        
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowFullStoryAdvicesPage"), object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height + 30
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y = 0
            }
        }
    }

    

}


