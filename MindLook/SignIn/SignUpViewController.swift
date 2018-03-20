//
//  SignUpViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 17/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    
    
    @IBOutlet weak var txtEmail: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    let host = "https://www.s2app.com/"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnSignUpClicked(_ sender: Any) {
        //POST Request
        //let parameters = ["email": "\(String(describing: self.txtEmail.text))", "password": "\(String(describing: self.txtPassword.text))"]
        
        //let parameters = ["email": "arjayniones@gmail.com", "password": "Password18"]
        
        //let parameters = "email=\(String(describing: self.txtEmail.text))&password=\(String(describing: self.txtPassword.text))"
        
//        guard let url = URL(string: "http://s2app.com/Signup?") else { return }
//
//        var request = URLRequest(url: url)
//        //request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        request.httpMethod = "POST"
//        let postString = "email=arjayniones@gmail.com&password=Test"
//
//        request.httpBody = postString.data(using: .utf8)
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data, error == nil else {                                                 // check for fundamental networking error
//                print("error=\(String(describing: error))")
//                return
//            }
//
//            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
//                print("statusCode should be 200, but is \(httpStatus.statusCode)")
//                print("response = \(String(describing: response))")
//            }
//
//            let responseString = String(data: data, encoding: .utf8)
//            print("responseString = \(String(describing: responseString))")
//        }
//        task.resume()
        
        
        
        //let myUrl = URL(string: "http://www.s2app.com/Signup?");
         let myUrl = URL(string: "http://103.86.48.128/Signup?");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "email=\( self.txtEmail.text)&password=\( self.txtPassword.text)";
        
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
                let json = try JSONSerialization.jsonObject(with: data!) as! Array<Any>
                
                print("This is the JSON Data: \(json)")
                
//                if let parseJSON = json {
//                    
//                    // Now we can access value of First Name by its key
//                    
//                     print("JSON Data: \(parseJSON)")
//                    let emailValue = parseJSON["email"] as? String
//                    print("Email: \(emailValue)")
//                    let passwordValue = parseJSON["password"] as? String
//                    print("Password: \(passwordValue)")
//                    
//                }
            } catch {
                print(error)
                
                
            }
        }
        task.resume()
        
      
    }
        
        
    
    
    
    
    
    
}
