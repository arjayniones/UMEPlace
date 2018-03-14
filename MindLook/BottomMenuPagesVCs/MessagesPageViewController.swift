//
//  MessagesPageViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 7/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class MessagesPageViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var isSelected = true
    let darkGreen = UIColor(red:0.03, green:0.59, blue:0.29, alpha:1.0)
    
    @IBOutlet weak var viewTitle: UIView!
    
    @IBOutlet weak var btnUnread: UIButton!
    
    @IBOutlet weak var lblUnread: UILabel!
    
    @IBAction func btnUnreadClicked(_ sender: Any) {
        
        if isSelected == false {
            isSelected = true
            self.btnUnread.setImage(UIImage(named: "checked"), for: UIControlState.normal)
            
            self.lblUnread.textColor = darkGreen
        }else{
            
            isSelected = false
            self.btnUnread.setImage(UIImage(named: "uncheck"), for: UIControlState.normal)
            
          
            
            self.lblUnread.textColor = UIColor.white
        }
    }
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        //if  comments call cell comments if advices call cell advices
        
        if indexPath.row % 2 == 0 {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentsCell",
                                                 for: indexPath) as! LessonCommentTableViewCellMain
        
            cell.viewMainCell.layer.cornerRadius = 20
            
            cell.viewMainCell.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
            
            cell.viewMainCell.layer.borderWidth = 1
            
            cell.viewMainCell.clipsToBounds = true
            
        cell.lblContent.text = "1234567890-=qwertyuiop[]asdfghjkl;'zxcvbnm,./qwertyuiop[]asdfghjkl;'zxcvbnm,./1234567890-=qwertyuiop[]asdfghjkl;'zxcvbnm,./qwertyuiop[]asdfghjkl;'zxcvbnm,./1234567890-=qwertyuiop[]asdfghjkl;'zxcvbnm,./qwertyuiop[]asdfghjkl;'zxcvbnm,./1234567890-=qwer"
        
      
        return cell
            
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AdvicesCell",
                                                     for: indexPath) as! PeoplesAdvicesMainTableViewCell
            
        
            
            cell.viewMainCell.layer.cornerRadius = 20
            
            cell.viewMainCell.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
            
            cell.viewMainCell.layer.borderWidth = 1
            
            cell.viewMainCell.clipsToBounds = true
            
            cell.lblContent.text = "1234567890-=qwertyuiop[]asdfghjkl;'zxcvbnm,./qwertyuiop[]asdfghjkl;'zxcvbnm,./1234567890-=qwertyuiop[]asdfghjkl;'zxcvbnm,./qwertyuiop[]asdfghjkl;'zxcvbnm,./1234567890-=qwertyuiop[]asdfghjkl;'zxcvbnm,./qwertyuiop[]asdfghjkl;'zxcvbnm,./1234567890-=qwer"
            
            
            return cell
            
            
        }
    }
    

    @IBOutlet weak var tableViewMessages: UITableView!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isSelected = false

        self.tableViewMessages.delegate = self
        self.tableViewMessages.dataSource = self
        
        self.viewTitle.layer.cornerRadius = 20
        
        self.viewTitle.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        
        self.viewTitle.layer.borderWidth = 1
        
        self.viewTitle.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
