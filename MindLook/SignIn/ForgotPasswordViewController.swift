//
//  ForgotPasswordViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 26/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import CoreData

class ForgotPasswordViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnSubmitTapped(_ sender: Any) {
        
        let myUrl = URL(string: "http://103.86.48.128/ForgotPassword/getnewpassword?");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "email=\(self.txtEmail.text!)";
        
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
                    
                     print("This is the JSON Data: \(result)")
                    if result == "1" {
                        
                      
                        
                                let alert = UIAlertController(title: "Success!!!", message: "Sign In successfully.", preferredStyle: UIAlertControllerStyle.alert)
                                alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler:   { action in
                                    
                                    // do something like...
                                    //self.gotoSignIn()
                                    self.dismiss(animated: true, completion: nil)
                                }))
                        
                                self.present(alert, animated: true, completion: nil)
                        
                        
                            }else if result == "0"{
                        
                        
                        
                                let alert = UIAlertController(title: "Not Existing!!!", message: "Your email is not yet registered.", preferredStyle: UIAlertControllerStyle.alert)
                                alert.addAction(UIAlertAction(title: "Register", style: UIAlertActionStyle.default, handler:   { action in
                                    
                                    // do something like...
                                    self.gotoSignUp()
                                    
                                }))
                        
                                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler:   { action in
                                    
                                    // do something like...
                                    //self.gotoSignUp()
                                    
                                }))
                        
                                self.present(alert, animated: true, completion: nil)
                        
                        
                        
                            }
                    
                    
                
                    
                })
                
                
                
            } catch {
                print(error)
                
                
            }
        }
        task.resume()
        
        
    }
    
    func gotoSignIn(){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SignInPage") as! SignInPageViewController
        
        
        
        
        self.navigationController?.present(nextViewController, animated: true)
        
    }
    
    func gotoSignUp(){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SignUpPage") as! SignUpViewController
        
        self.navigationController?.pushViewController(nextViewController, animated: true)
        
    }
    
    
    @IBAction func btnCancelTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
