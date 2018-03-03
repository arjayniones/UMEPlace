//
//  WLAChartAnalysisPageViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 2/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class WLAChartAnalysisPageViewController: UIViewController {

    @IBOutlet weak var btn1D: UIButton!
    @IBOutlet weak var btn7D: UIButton!
    @IBOutlet weak var btn30D: UIButton!
    @IBOutlet weak var lblDuringLastdays: UILabel!
    
    @IBOutlet weak var lblSumm1: UILabel!
    
    @IBOutlet weak var lblSumm2: UILabel!
    
    @IBOutlet weak var lblSumm3: UILabel!
    
    @IBOutlet weak var lblRecom1: UILabel!
    
    @IBOutlet weak var lblRecom2: UILabel!
    
    
    
    
    @IBOutlet weak var lblWLACom: UILabel!
    
    @IBOutlet weak var lblTimes: UILabel!
    
    @IBOutlet weak var lblPercentage: UILabel!
    
    @IBOutlet weak var lblWantPos: UILabel!
    
    @IBOutlet weak var lblWantNeg: UILabel!
    
    @IBOutlet weak var lblLikePos: UILabel!
    
    @IBOutlet weak var lblLikeNeg: UILabel!
    
    @IBOutlet weak var lblAcceptPos: UILabel!
    
    @IBOutlet weak var lblAcceptNeg: UILabel!
    
    @IBOutlet weak var lblWantTimesPos: UILabel!
    
    @IBOutlet weak var lblWantTimesNeg: UILabel!
    
    @IBOutlet weak var lblLikeTimesPos: UILabel!
    
    @IBOutlet weak var lblLikeTimesNeg: UILabel!
    
    @IBOutlet weak var lblAcceptTimesPos: UILabel!
    
    @IBOutlet weak var lblAcceptTimesNeg: UILabel!
    
    @IBOutlet weak var lblWantPercentPos: UILabel!
    
    @IBOutlet weak var lblWantPercentNeg: UILabel!
    
    @IBOutlet weak var lblLikePercentPos: UILabel!
    
    @IBOutlet weak var lblLikePercentNeg: UILabel!
    
    @IBOutlet weak var lblAcceptPercentPos: UILabel!
    
    @IBOutlet weak var lblAcceptPercentNeg: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpBordersForTable()
    }
    
    func setUpBordersForTable(){
        
        self.lblWLACom.layer.borderColor = UIColor.gray.cgColor
        self.lblWLACom.layer.borderWidth = 1
        
        self.lblTimes.layer.borderColor = UIColor.gray.cgColor
        self.lblTimes.layer.borderWidth = 1
        
     self.lblPercentage.layer.borderColor = UIColor.gray.cgColor
     self.lblPercentage.layer.borderWidth = 1
        
        self.lblWantPos.layer.borderColor = UIColor.gray.cgColor
        self.lblWantPos.layer.borderWidth = 1
        
        self.lblWantNeg.layer.borderColor = UIColor.gray.cgColor
        self.lblWantNeg.layer.borderWidth = 1
        
        self.lblLikePos.layer.borderColor = UIColor.gray.cgColor
        self.lblLikePos.layer.borderWidth = 1
        
        self.lblLikeNeg.layer.borderColor = UIColor.gray.cgColor
        self.lblLikeNeg.layer.borderWidth = 1
        
        self.lblAcceptPos.layer.borderColor = UIColor.gray.cgColor
        self.lblAcceptPos.layer.borderWidth = 1
        self.lblAcceptNeg.layer.borderColor = UIColor.gray.cgColor
        self.lblAcceptNeg.layer.borderWidth = 1
        
        self.lblWantTimesPos.layer.borderColor = UIColor.gray.cgColor
        self.lblWantTimesPos.layer.borderWidth = 1
        
        self.lblWantTimesNeg.layer.borderColor = UIColor.gray.cgColor
        self.lblWantTimesNeg.layer.borderWidth = 1
        
        self.lblLikeTimesPos.layer.borderColor = UIColor.gray.cgColor
        self.lblLikeTimesPos.layer.borderWidth = 1
        
        self.lblLikeTimesNeg.layer.borderColor = UIColor.gray.cgColor
        self.lblLikeTimesNeg.layer.borderWidth = 1
        
        self.lblAcceptTimesPos.layer.borderColor = UIColor.gray.cgColor
        self.lblAcceptTimesPos.layer.borderWidth = 1
        self.lblAcceptTimesNeg.layer.borderColor = UIColor.gray.cgColor
        self.lblAcceptTimesNeg.layer.borderWidth = 1
        
        self.lblWantPercentPos.layer.borderColor = UIColor.gray.cgColor
        self.lblWantTimesPos.layer.borderWidth = 1
        
        self.lblWantPercentNeg.layer.borderColor = UIColor.gray.cgColor
        self.lblWantPercentNeg.layer.borderWidth = 1
        
        self.lblLikePercentPos.layer.borderColor = UIColor.gray.cgColor
        self.lblLikePercentPos.layer.borderWidth = 1
        
        self.lblLikePercentNeg.layer.borderColor = UIColor.gray.cgColor
        self.lblLikePercentNeg.layer.borderWidth = 1
        
        self.lblAcceptPercentPos.layer.borderColor = UIColor.gray.cgColor
        self.lblAcceptPercentPos.layer.borderWidth = 1
        self.lblAcceptPercentNeg.layer.borderColor = UIColor.gray.cgColor
        self.lblAcceptPercentNeg.layer.borderWidth = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
