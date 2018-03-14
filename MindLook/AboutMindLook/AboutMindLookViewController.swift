//
//  AboutMindLookViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 13/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class AboutMindLookViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var MenuNames: [String]!
    
    @IBOutlet weak var tableAboutMenu: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.MenuNames = ["User Agreement", "Privacy Policy","Legal Notice"]
        
        
        self.tableAboutMenu.delegate = self
        self.tableAboutMenu.dataSource = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.MenuNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                 for: indexPath) as! AboutTableViewCell
        
        //let artist = artists[indexPath.row]
        //cell.bioLabel.text = artist.bio
        //cell.bioLabel.textColor = UIColor(white: 114/255, alpha: 1)
        
       
        cell.lblMenuName.text = self.MenuNames[indexPath.row]
        
       
        return cell
    }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
//        
//        NotificationCenter.default.post(name: NSNotification.Name("ShowShareLessonDetailsPage"), object: nil)
//        
//    }

}
