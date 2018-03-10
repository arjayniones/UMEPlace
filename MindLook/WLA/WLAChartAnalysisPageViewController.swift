//
//  WLAChartAnalysisPageViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 2/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import Charts

class WLAChartAnalysisPageViewController: UIViewController, ChartViewDelegate {

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
    
    //@IBOutlet weak var chartPosStat: PieChart!
    @IBOutlet weak var pieChartPosStat: PieChartView!
    
    @IBOutlet weak var pieChartWLAComponents: PieChartView!
    
    let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)
    let skyBlue =  UIColor(red:0.29, green:0.81, blue:0.97, alpha:1.0)
    
    
    var status: [String]!
    var statusPercentage: [Double]!
    var nameWLAComp: [String]!
    var percentageWLA: [Double]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpBordersForTable()
        
       self.status = ["Negative","Positive"]
       self.statusPercentage = [21.0,12.0]
       self.nameWLAComp = ["W+", "W-", "L+", "L-", "A+", "A-"]
       self.percentageWLA = [25.0,3.0,24.0,21.0,15.0,12.0]
        
         self.setDataCountPosStat(status.count, range: UInt32(statusPercentage.count))
        
        self.setDataCountWLA(nameWLAComp.count, range: UInt32(percentageWLA.count))
        
        self.setupPie(pieChartView: pieChartPosStat)
        
        pieChartWLAComponents.usePercentValuesEnabled = true
        pieChartWLAComponents.drawSlicesUnderHoleEnabled = false
        pieChartWLAComponents.holeRadiusPercent = 0.58
        pieChartWLAComponents.transparentCircleRadiusPercent = 0.61
        pieChartWLAComponents.chartDescription?.enabled = false
        pieChartWLAComponents.setExtraOffsets(left: 5, top: 10, right: 5, bottom: 5)
        
        pieChartWLAComponents.drawCenterTextEnabled = false
        
        pieChartWLAComponents.drawHoleEnabled = false
        pieChartWLAComponents.rotationAngle = 0
        pieChartWLAComponents.rotationEnabled = true
        pieChartWLAComponents.highlightPerTapEnabled = true
        
        pieChartPosStat.delegate = self
        pieChartWLAComponents.delegate = self
        
        pieChartPosStat.animate(xAxisDuration: 1.4, easingOption: .easeInBack)
        
        pieChartWLAComponents.animate(xAxisDuration: 1.4, easingOption: .easeInBack)
       
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
    

    //set up the pie chart
    func setChartStatus(dataPoints: [String], values: [Double]) {
        self.pieChartPosStat.noDataText = "You need to provide data for the chart."
        
        
    }
    
    func setupPie(pieChartView chartView: PieChartView) {
        chartView.usePercentValuesEnabled = true
        chartView.drawSlicesUnderHoleEnabled = false
        chartView.holeRadiusPercent = 0.58
        chartView.transparentCircleRadiusPercent = 0.61
        chartView.chartDescription?.enabled = false
        chartView.setExtraOffsets(left: 5, top: 10, right: 5, bottom: 5)
        
        chartView.drawCenterTextEnabled = false
       
        chartView.drawHoleEnabled = false
        chartView.rotationAngle = 0
        chartView.rotationEnabled = true
        chartView.highlightPerTapEnabled = true
        
        let l = chartView.legend
        l.horizontalAlignment = .right
        l.verticalAlignment = .top
        l.orientation = .vertical
        l.drawInside = false
        l.xEntrySpace = 7
        l.yEntrySpace = 0
        l.yOffset = 0
        
        
    }
    
    
   
    
    func setDataCountPosStat(_ count: Int, range: UInt32) {
        let entries = (0..<count).map { (i) -> PieChartDataEntry in
            // IMPORTANT: In a PieChart, no values (Entry) should have the same xIndex (even if from different DataSets), since no values can be drawn above each other.
            return PieChartDataEntry(value: statusPercentage[i],
                                     label: status[i])
        }
        
        let set = PieChartDataSet(values: entries, label: "")
        set.drawIconsEnabled = false
        set.sliceSpace = 2
        
        set.colors = [darkBlue] + [skyBlue]
        

        let data = PieChartData(dataSet: set)
        
        let pFormatter = NumberFormatter()
        pFormatter.numberStyle = .percent
        pFormatter.maximumFractionDigits = 1
        pFormatter.multiplier = 1
        pFormatter.percentSymbol = " %"
        data.setValueFormatter(DefaultValueFormatter(formatter: pFormatter))
        
        data.setValueFont(.systemFont(ofSize:13, weight: .regular))
        data.setValueTextColor(.white)
        
        self.pieChartPosStat.data = data
        self.pieChartPosStat.highlightValues(nil)
    }
    
    func setDataCountWLA(_ count: Int, range: UInt32) {
        let entries = (0..<count).map { (i) -> PieChartDataEntry in
            // IMPORTANT: In a PieChart, no values (Entry) should have the same xIndex (even if from different DataSets), since no values can be drawn above each other.
            return PieChartDataEntry(value: percentageWLA[i],
                                     label: nameWLAComp[i])
        }
        
        let set = PieChartDataSet(values: entries, label: "")
        set.drawIconsEnabled = false
        set.sliceSpace = 2
        
        set.colors = [darkBlue
            , UIColor.orange
            , UIColor.red
            , UIColor.yellow
            , skyBlue
            , UIColor.green]
        
            let data = PieChartData(dataSet: set)
        
        let pFormatter = NumberFormatter()
        pFormatter.numberStyle = .percent
        pFormatter.maximumFractionDigits = 1
        pFormatter.multiplier = 1
        pFormatter.percentSymbol = " %"
        data.setValueFormatter(DefaultValueFormatter(formatter: pFormatter))
        
        data.setValueFont(.systemFont(ofSize:12, weight: .regular))
        data.setValueTextColor(.white)
        
        self.pieChartWLAComponents.data = data
        self.pieChartWLAComponents.highlightValues(nil)
    }
    
    

}
