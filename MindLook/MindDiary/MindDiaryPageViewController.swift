//
//  WLACalendarPageViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 28/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import JTAppleCalendar

class MindDiaryPageViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var lblYear: UILabel!
    
    @IBOutlet weak var lblMonth: UILabel!
    @IBOutlet weak var collectionViewCalendar: JTAppleCalendarView!
    
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var tableMyStatus: UITableView!
    
    @IBOutlet weak var viewLower: UIView!
    
    @IBOutlet weak var lblDateAndMyStatus: UILabel!
    
    @IBOutlet weak var viewPositiveStatus: UIView!
    
     let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.viewPositiveStatus.layer.cornerRadius = 10
        self.viewPositiveStatus.layer.borderWidth = 2
        self.viewPositiveStatus.layer.borderColor = UIColor.white.cgColor
        
         self.collectionViewCalendar.scrollToDate(Date())
        self.collectionViewCalendar.selectDates([ Date() ])
        
        setUpCalendarView()
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpCalendarView(){
        
        collectionViewCalendar.minimumLineSpacing = 0
        collectionViewCalendar.minimumInteritemSpacing = 0
        
        
        //setup date labels
        
        collectionViewCalendar.visibleDates() { (visibleDates) in
            
          self.setUpDatesForCalendar(from: visibleDates)
        }
        
    }
    
    func setUpDatesForCalendar(from visibleDates: DateSegmentInfo){
        let date = visibleDates.monthDates.first!.date
        
        self.dateFormatter.dateFormat = "yyyy"
        self.lblYear.text = self.dateFormatter.string(from: date)
        
        self.dateFormatter.dateFormat = "MMMM"
        self.lblMonth.text = self.dateFormatter.string(from: date)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                 for: indexPath) as! MyStatusTableViewCell
        
        cell.viewCell.layer.cornerRadius = 20
        
        cell.viewCell.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        
        cell.viewCell.layer.borderWidth = 1
        
        cell.viewCell.clipsToBounds = true
        
       
        
        
        return cell
    }
    
    func handleCellTextColor(view: JTAppleCell? , cellState: CellState){
        guard let validCell = view as? CustomCell  else {return}
        
        if cellState.isSelected {
            
            validCell.dateLabel.textColor = UIColor.white
            validCell.viewIndicator.isHidden = false
            
            validCell.viewIndicator.isHidden = false
           
            
            validCell.viewIndicator.layer.cornerRadius = validCell.viewIndicator.frame.size.width / 2;
        }else{
            if cellState.dateBelongsTo == .thisMonth{
                validCell.dateLabel.textColor = darkBlue
            }else{
                
                validCell.dateLabel.textColor = UIColor.lightGray
            }
            
        }
    }
    
    func handleCellVisibility(view: JTAppleCell? , cellState: CellState){
        
        
    }
    
     func handleCellSelection(view: JTAppleCell? , cellState: CellState){
        
    }
    
    
    //Cell Configuration
    func configureCell(cell: JTAppleCell?,cellState: CellState){
        guard let myCustomCell = cell as? CustomCell else {return}
        
        handleCellTextColor(view: myCustomCell, cellState: cellState)
        handleCellVisibility(view: myCustomCell, cellState: cellState)
        handleCellSelection(view: myCustomCell, cellState: cellState)
        
    }

   

}

extension MindDiaryPageViewController: JTAppleCalendarViewDelegate, JTAppleCalendarViewDataSource{
    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
        //some codes
        
    }
    
    
    
    
    
    func configureCalendar(_ calendar: JTAppleCalendarView) ->
        ConfigurationParameters {
            
            dateFormatter.dateFormat = "yyyy MM dd"
            dateFormatter.timeZone = Calendar.current.timeZone
            dateFormatter.locale = Calendar.current.locale
            
            let startDate = dateFormatter.date(from: "2017 01 01")!
             let endDate = dateFormatter.date(from: "2030 01 01")!
            
            
            let parameters = ConfigurationParameters(startDate: startDate, endDate: endDate)
        
        return parameters
    }
    
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
       cell.layer.borderWidth = 0.5
       cell.layer.borderColor = darkBlue.cgColor
        
        handleCellTextColor(view: cell, cellState: cellState)
        
        cell.dateLabel.text = cellState.text
        
        if cell.isSelected {
            
            cell.viewIndicator.isHidden = false
//             cell.viewIndicator.layer.cornerRadius = cell.viewIndicator.frame.size.width / 2;
        }else{
            
            cell.viewIndicator.isHidden = true
        }
        
       
        
        
      
        return cell
    }
    
    func calendar(_ calendar: JTAppleCalendarView, didScrollToDateSegmentWith visibleDates: DateSegmentInfo) {
       setUpDatesForCalendar(from: visibleDates)
        
    }
    
    func calendar(_ calendar: JTAppleCalendarView, didSelectDate date: Date, cell: JTAppleCell?, cellState: CellState) {


       //show the details of that particular date


    }

    func calendar(_ calendar: JTAppleCalendarView, didDeselectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
         handleCellTextColor(view: cell, cellState: cellState)
    }
    
}
