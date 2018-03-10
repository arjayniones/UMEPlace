//
//  ChatPageViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 7/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class ChatPageViewController: UIViewController {

    var isViewMenuOpen = false
    
    @IBOutlet weak var viewChat: UIView!
    
    @IBOutlet weak var viewMenu: UIView!
    
    @IBOutlet weak var viewTextField: UIView!
    
   @IBOutlet var keyboardHeightLayoutConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.hideKeyboardWhenTappedAround()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)

      
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       //hides the buttom menu bar
         NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
    }
    
    
    
    @IBAction func btnMenuClicked(_ sender: UIButton) {
        
        if isViewMenuOpen{
        self.viewMenu.isHidden = false
        self.isViewMenuOpen = false
        }else{
            self.viewMenu.isHidden = true
            self.isViewMenuOpen = true
        }
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

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer =     UITapGestureRecognizer(target: self, action:    #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
