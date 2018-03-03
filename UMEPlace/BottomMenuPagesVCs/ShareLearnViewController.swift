//
//  ShareLearnViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 7/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class ShareLearnViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                 for: indexPath) as! ShareLessonFeedTableViewCell
        
        //let artist = artists[indexPath.row]
        //cell.bioLabel.text = artist.bio
        //cell.bioLabel.textColor = UIColor(white: 114/255, alpha: 1)
        
        cell.viewCell.layer.cornerRadius = 20
        
        cell.viewCell.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        cell.viewCell.layer.borderWidth = 1
        
        cell.viewCell.clipsToBounds = true
        
        cell.lblMyLessonContent.text = "Should I tell my boss that his evaluation is not acceptable to me? Should I tell my boss that his evaluation is not XXXXXXXXXXXXXX? Should I tell my boss that his evaluation is not acceptable to me? Should I tell him his evaluation is not acceptable?"
        
        cell.lblStoryInBrief.text = "Should I tell my boss that his evaluation is not acceptable to me? Should I tell my boss that his evaluation is not XXXXXXXXXXXXXX? Should I tell my boss that his evaluation is not acceptable to me? Should I tell him his evaluation is not acceptable?"
        
        cell.lblOthers.text = "Got (2) Comments, (5) Likes"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
     NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
        
   NotificationCenter.default.post(name: NSNotification.Name("ShowShareLessonDetailsPage"), object: nil)
        
    }
    

    @IBOutlet weak var tableViewShareLesson: UITableView!
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.tableViewShareLesson.dataSource = self
        self.tableViewShareLesson.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
         NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}