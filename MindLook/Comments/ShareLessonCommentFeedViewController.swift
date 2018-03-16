//
//  ShareLessonCommentFeedViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 20/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class ShareLessonCommentFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewComments: UITableView!
    
    @IBOutlet weak var lblTitleComments: UILabel!
    
    
    @IBOutlet var keyboardHeightLayoutConstraint: NSLayoutConstraint?
    
    
    @IBOutlet weak var viewTop: UIView!
    
    @IBOutlet weak var viewTitle: UIView!
    @IBOutlet weak var lblSharedByID: UILabel!
    @IBOutlet weak var txtLessonContent: UITextView!
    @IBOutlet weak var lblUnread: UILabel!
    @IBOutlet weak var imgUnread: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        
        self.viewTop.layer.cornerRadius = 20
        self.viewTop.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewTop.layer.borderWidth = 1
        self.viewTop.clipsToBounds = true
        
        self.viewTitle.layer.cornerRadius = 20
        self.viewTitle.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewTitle.layer.borderWidth = 1
        self.viewTitle.clipsToBounds = true
        
        
        self.txtLessonContent.text = "My boss evaluates my performance unfairly. I do not get promotion as I should. My boss evaluates my performance unfairly. I do not get promotion as I should. My boss evaluates my performance unfairly. I do not get promotion as I should. What to do???"
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
            let cell = tableView.dequeueReusableCell(withIdentifier: "CommentsCell",
                                                     for: indexPath) as! LessonCommentTableViewCellMain
        
            cell.viewMainCell.layer.cornerRadius = 20
            
            cell.viewMainCell.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
            
            cell.viewMainCell.layer.borderWidth = 1
            
            cell.viewMainCell.clipsToBounds = true
           
            cell.lblNumber.text = "#\(indexPath.row + 1)"
            cell.lblContent.text = "I like your story"
            
            return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowShareLessonDetailsPage"), object: nil)
    }
    
    @IBAction func goBack(_ sender: Any) {
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowShareLessonDetailsPage"), object: nil)
        
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

