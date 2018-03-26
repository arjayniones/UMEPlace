//
//  SignInPageViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 7/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class SignInPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        
        
        if UIDevice.current.model.hasPrefix("iPad") {
            self.view.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            print("iPad")
        } else {
            print("iPhone or iPod Touch")
            if UIApplication.shared.statusBarFrame.height >= CGFloat(44) {
                self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnSignInTapped(_ sender: Any) {
        
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "MainPage") as! MainContainerViewController
        
        self.navigationController?.present(nextViewController, animated: true)
        
        //self.navigationController?.pushViewController(nextViewController,animated: true)
    }
    
    @IBAction func btnForgetPassTapped(_ sender: Any) {
        
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ForgotPasswordPage") as! ForgotPasswordViewController
//        
//        
//        
//        
//        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    

}
