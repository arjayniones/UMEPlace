//
//  TutorialHelpViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 13/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class TutorialHelpViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

      let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)
    
    @IBOutlet weak var tableTutorials: UITableView!
    
    @IBOutlet weak var txtWriteMessage: UITextView!
    
    @IBOutlet weak var btnSend: UIButton!
    
    @IBOutlet weak var btnClear: UIButton!
    
    
    
    var TutorialList: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.TutorialList = ["Description...#1", "Description...#2","Description...#3", "Description...#4", "Description...#5"]
        
        
        self.tableTutorials.delegate = self
        self.tableTutorials.dataSource = self
        
        
        //Set up corner radius
        self.txtWriteMessage.layer.cornerRadius = 10
        self.txtWriteMessage.layer.borderColor = darkBlue.withAlphaComponent(0.5).cgColor
        self.txtWriteMessage.layer.borderWidth = 1
        self.txtWriteMessage.clipsToBounds = true
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.TutorialList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                 for: indexPath) as! TutorialsTableViewCell
        
        //let artist = artists[indexPath.row]
        //cell.bioLabel.text = artist.bio
        //cell.bioLabel.textColor = UIColor(white: 114/255, alpha: 1)
        
        
        cell.lblTutName.text = self.TutorialList[indexPath.row]
        
        
        return cell
    }
    

}
