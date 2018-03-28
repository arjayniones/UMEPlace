//
//  SignUpViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 17/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import CoreData


class SignUpViewController: UIViewController, NSFetchedResultsControllerDelegate {

    var userID = ""
    var email = ""
    var password = ""
    var update = ""
    var inactive = 0
    var activatecode = ""
    
     let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var txtEmail: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    let host = "https://www.s2app.com/"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UIDevice.current.model.hasPrefix("iPad") {
            self.view.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            print("iPad")
        } else {
            print("iPhone or iPod Touch")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnSignUpClicked(_ sender: Any) {
        //POST Request
       
         let myUrl = URL(string: "http://103.86.48.128/Signup?");
        
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
                let json = try JSONSerialization.jsonObject(with: data!) as! [Any]
                
                print("This is the JSON Data: \(json)")
                
                OperationQueue.main.addOperation({
                    
                    if json.count != 0 {
                        
                        if let data = json[0] as? [String:Any] {
                      
                             let userInfo: User = NSEntityDescription.insertNewObject(forEntityName: "User", into: self.managedContext) as! User
                            
                            userInfo.userid = String(data["userid"] as? String ?? "default")
                            userInfo.email = String(data["email"] as? String ?? "default")
                            userInfo.password = String(data["password"] as? String ?? "default")
                            userInfo.update = String(data["update"] as? String ?? "default")
                            
                            userInfo.inactive = Int32(data["inactive"] as? Int ?? 0)
                            
                            userInfo.activatecode = String(data["activatecode"] as? String ?? "default")
                            
                           
                            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ValidationPage") as! ValidationPageViewController
                            
                            
                            nextViewController.passedUserID = userInfo.userid!
                            
                            nextViewController.passedUserActCode = userInfo.activatecode!
                      
                            UserDefaults.standard.setValue(userInfo.userid, forKey: "userid")
                            //self.navigationController?.present(nextViewController, animated: true)
                            
                            self.navigationController?.pushViewController(nextViewController,animated: true)
                            
                            
                            print("JSON Data \n UserID : \(String(describing: userInfo.userid!)) \n Email : \(String(describing: userInfo.email!)) \n Password : \(String(describing: userInfo.password!)) \n Update : \(String(describing: userInfo.update!)) \n Inactive : \(userInfo.inactive) \n Activation Code : \(String(describing: userInfo.activatecode!))")
                        }
                    }
                    
                })
                
                
                
            } catch {
                print(error)
                
                
            }
        }
        task.resume()
        
      
    }
    
    
    
    @IBAction func btnCancelTapped(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
        
//    @IBAction func btnSignUpTapped(_ sender: Any) {
//         let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "User")
//        
//        
//        do {
//            let eachUser = try self.managedContext.fetch(fetchRequest)
//            
//            
//            
//            
//            //print(eachFeed[0].value(forKeyPath: "imageID") as! Int32)
//            let userID = Int(eachUser[0].value(forKeyPath: "userid") as! String)
//            print("Selected imageID : \(userID)")
//            
//            
//            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ValidationPage") as! ValidationPageViewController
//            
//            
//            nextViewController.passedReviewID = reviewID
//            //self.present(nextViewController, animated:true, completion:nil)
//            
//            self.navigationController?.pushViewController(nextViewController, animated: true)
//            
//            
//        } catch let error as NSError {
//            print("Could not get product detail. \(error)")
//        }
//
//    }
//    
    
    
    
    
    
}
