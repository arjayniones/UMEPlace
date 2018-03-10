//
//  ShareLessonDetailsViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 14/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class ShareLessonDetailsViewController: UIViewController {

    @IBOutlet weak var viewLessonsDetails: UIView!
    
    @IBOutlet weak var lblSharedByID: UILabel!
    
    @IBOutlet weak var btnLike: UIButton!
    
    @IBOutlet weak var btnClose: UIButton!
    
    @IBOutlet weak var lblMyLesson: UILabel!
    
    @IBOutlet weak var lblMyStoryBrief: UILabel!
    
    @IBOutlet weak var btnGotLikes: UIButton!
    
    @IBOutlet weak var btnSeeComments: UIButton!
    
    @IBOutlet weak var btnSeeFullStory: UIButton!
    
    @IBOutlet weak var btnTags: UIButton!
    
    
    @IBOutlet weak var viewAssessments: UIView!
    @IBOutlet weak var lblSelfAssessment: UILabel!
    
    @IBOutlet weak var lblStatus: UILabel!
    
    @IBOutlet weak var lblStatus1: UILabel!
    @IBOutlet weak var imgStatus1: UIImageView!
    
    
    @IBOutlet weak var lblStatus2: UILabel!
    @IBOutlet weak var imgStatus2: UIImageView!
    
    
    @IBOutlet weak var lblStoryStatus: UILabel!
    
    @IBOutlet weak var lblStoryStatus1: UILabel!
    @IBOutlet weak var imgStoryStatus1: UIImageView!
    
    
    @IBOutlet weak var lblStoryStatus2: UILabel!
    @IBOutlet weak var imgStoryStatus2: UIImageView!
    
    @IBOutlet weak var lblRootCause: UILabel!
    
    @IBOutlet weak var lblRootCause1: UILabel!
    @IBOutlet weak var imgRootCause1: UIImageView!
    
    
    @IBOutlet weak var txtWriteComment: UITextField!
    
    @IBOutlet weak var btnSend: UIButton!
    
    @IBOutlet weak var viewMyNote: UIView!
    
    @IBOutlet weak var txtViewMyNote: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.hideKeyboardWhenTappedAround()
        
      //viewlessons properies
        self.viewLessonsDetails.layer.cornerRadius = 20
        
        
        self.viewLessonsDetails.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewLessonsDetails.layer.borderWidth = 1
        
         self.viewLessonsDetails.clipsToBounds = true
        
//        self.viewLessonsDetails.layer.shadowColor = UIColor.black.cgColor
//        self.viewLessonsDetails.layer.shadowRadius = 3.0
//        self.viewLessonsDetails.layer.shadowOpacity = 1.0
//        self.viewLessonsDetails.layer.shadowOffset = CGSize(width: 4, height: 4)
//        self.viewLessonsDetails.layer.masksToBounds = false
        
       
       
        //view self assessment properties
        
        self.viewAssessments.layer.cornerRadius = 20
        self.viewAssessments.clipsToBounds = true
        
        let darkgreen = UIColor(red:0.07, green:0.43, blue:0.07, alpha:1.0)
        
        self.viewAssessments.layer.borderColor = darkgreen.cgColor
        self.viewAssessments.layer.borderWidth = 2
        
        //viewMyNote
        
        self.viewMyNote.layer.cornerRadius = 20
        self.viewMyNote.clipsToBounds = true
        self.viewMyNote.layer.borderColor = darkgreen.cgColor
        self.viewMyNote.layer.borderWidth = 2
        
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
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowShareLearn"), object: nil)
    }
    
    
    @IBAction func seeComments(_ sender: Any) {
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowLessonCommentsPage"), object: nil)
    }
    
    @IBAction func seeFullStory(_ sender: Any) {
        
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowFullStoryLessonsPage"), object: nil)
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


