//
//  SignInPageViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 7/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import CoreData

class SignInPageViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    var btnSignInTappedCount = 0
    
    
    
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
        
        //POST Request
        
        let myUrl = URL(string: "http://103.86.48.128/SignIn/usersignin?");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "email=\( self.txtEmail.text!)&password=\( self.txtPassword.text!)";
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            // You can print out response object
            print("response = \(response)")
            
            //Let's convert response sent from a server side script to a NSDictionary object:
            do {
               
                
                OperationQueue.main.addOperation({
                    
                
                    
                    
                    let result = String(data: data!, encoding: .utf8)
                    
                    if result == "1" {
                        
                        let alert = UIAlertController(title: "Success!!!", message: "Sign In successfully.", preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler:   { action in
                            
                            // do something like...
                            self.gotoMain()
                            
                        }))
                        
                        self.present(alert, animated: true, completion: nil)
                        
                    }
                    else if result == "0"{
                        
                        let alert = UIAlertController(title: "Email Not Reristered.", message: "Your email is not yet registered in our system. Please register first to use our app, Thank you!!!", preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction(title: "Register", style: UIAlertActionStyle.default, handler:   { action in
                            
                            // do something like...
                            self.gotoSignUp()
                            
                        }))
                        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler:   { action in
                            
                            // do something like...
                            
                            
                            
                            
                        }))
                        
                        self.present(alert, animated: true, completion: nil)
                        
                        
                        
                    }else if result == "2"{
                        
                        let alert = UIAlertController(title: "Invalid Password.", message: "Your password doesn't match. Please try again!!!", preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:   { action in
                            
                            // do something like...
                            if self.btnSignInTappedCount >= 3 {
                                
                                let alert = UIAlertController(title: "Forgot Password?", message: "Try to reset your password now.", preferredStyle: UIAlertControllerStyle.alert)
                                alert.addAction(UIAlertAction(title: "Reset Password", style: UIAlertActionStyle.default, handler:   { action in
                                    
                                    // do something like...
                                    self.gotoForgotPassword()
                                    
                                    self.btnSignInTappedCount = 0
                                    
                                }))
                                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler:   { action in
                                    
                                    // do something like...
                                    
                                    
                                }))
                                
                                self.present(alert, animated: true, completion: nil)
                                
                            }
                            
                            
                            self.btnSignInTappedCount += 1
                            
                            
                            
                        }))
                        
                        self.present(alert, animated: true, completion: nil)
                        
                    }
                    
                    
                    
                })
                
                
                
            } catch {
                print(error)
                
                
            }
        }
        task.resume()
        
        
        //btnSignInTappedCount += 1
      
        
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
    
    func gotoMain(){
        
        
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let nextViewController = storyBoard.instantiateViewController(withIdentifier: "MainPage") as! MainContainerViewController
                
              
                self.navigationController?.present(nextViewController, animated: true)
                
                //self.navigationController?.pushViewController(nextViewController,animated: true)
      
        
        
    }
    
    func gotoSignUp(){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SignUpPage") as! SignUpViewController
        
        //self.navigationController?.pushViewController(nextViewController, animated: true)
        
        self.navigationController?.present(nextViewController, animated: true)
        
    }
    
    func gotoForgotPassword(){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ForgotPasswordPage") as! ForgotPasswordViewController
        
        self.navigationController?.pushViewController(nextViewController, animated: true)
        
    }
    

}
