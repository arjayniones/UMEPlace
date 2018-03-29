//
//  ValidationPageViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 22/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class ValidationPageViewController: UIViewController {

    
    var passedUserID = ""
    var passedUserActCode = ""
    
    
    
    @IBOutlet weak var txtValidationCode: UITextField!
    
    @IBOutlet weak var btnSubmit: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //check if ipad or iphone
        if UIDevice.current.model.hasPrefix("iPad") {
            self.view.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            print("iPad")
        } else {
            print("iPhone or iPod Touch")
        }

        print("Passed UserID: \(self.passedUserID) \n Passed Activation Code: \(self.passedUserActCode)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnSubmitTapped(_ sender: Any) {
        
        if self.passedUserActCode == self.txtValidationCode.text {
            
            
            let myUrl = URL(string: "http://103.86.48.128/Signup/checkvalidatecode?");
            
            var request = URLRequest(url:myUrl!)
            
            request.httpMethod = "POST"// Compose a query string
            
            let postString = "userid=\(self.passedUserID)&activatecode=\(self.txtValidationCode.text!)";
            
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
                        
                        print("This is the JSON Data: \(result!)")
                        if result == "1" {
                            
                            
                            let alert = UIAlertController(title: "Success!!!", message: "Verification Code matched.", preferredStyle: UIAlertControllerStyle.alert)
                            alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler:   { action in
                                
                                // do something like...
                                self.gotoMain()
                                
                            }))
                            
                            self.present(alert, animated: true, completion: nil)
                            
                            
                        }else if result == "-1"{
                            
                            
                            
                            let alert = UIAlertController(title: "Code did not match", message: "Please check email and try again.", preferredStyle: UIAlertControllerStyle.alert)
                            alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                            
                            
                        }
                        else {
                            
                            
                        }
                        
                    })
                  
                    
                } catch {
                    print(error)
                    
                    
                }
            }
            task.resume()
            
            
        }
        
    }
    
    func gotoMain(){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "MainPage") as! MainContainerViewController
        
        
        
        
        self.navigationController?.present(nextViewController, animated: true)
        
        //self.navigationController?.pushViewController(nextViewController,animated: true)
    }
    
    
    @IBAction func btnCancelTapped(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

}
