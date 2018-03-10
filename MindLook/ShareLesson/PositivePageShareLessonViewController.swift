//
//  PositivePageShareLessonViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 12/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import SwiftGifOrigin
import Charts


class PositivePageShareLessonViewController: UIViewController, ChartViewDelegate {
    
    var posStatDate: [String]!
    var posStatPercentage:  [Double]!

     let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)
    
    @IBOutlet weak var imgViewSoda: UIImageView!
    
    @IBOutlet weak var viewLineChartStatus: LineChartView!
    
    
    @IBOutlet weak var btnShareLesson: UIButton!
    
    @IBOutlet weak var viewSorry: UIView!
    @IBOutlet weak var viewShareLesson: UIView!
    @IBAction func showInputShareLesson(_ sender: Any) {
        
        //navigate from Main Home
        
        //must be pop up
        NotificationCenter.default.post(name: NSNotification.Name("HideBottomMenu"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowInputPageShareLesson"), object: nil)
        
        
    }
    
    
    @IBOutlet weak var btnSorryMaybeLater: UIButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.posStatDate = ["03/01","03/02","03/03","03/04","03/05","03/06","03/07"]
        self.posStatPercentage = [50.0,40.0,55.0,30.0,70.0,65.0,25.0]
        
        //linechart
        self.setDataCount(Int(posStatDate.count))
        
        self.viewLineChartStatus.delegate = self
        
        viewLineChartStatus.chartDescription?.enabled = false
        viewLineChartStatus.dragEnabled = true
        viewLineChartStatus.setScaleEnabled(true)
        viewLineChartStatus.pinchZoomEnabled = true
        
        // x-axis limit line
//        let llXAxis = ChartLimitLine(limit: 10, label: "Index 10")
//        llXAxis.lineWidth = 4
//        llXAxis.lineDashLengths = [10, 10, 0]
//        llXAxis.labelPosition = .rightBottom
//        llXAxis.valueFont = .systemFont(ofSize: 10)
//
        viewLineChartStatus.xAxis.gridLineDashLengths = [10, 10]
        viewLineChartStatus.xAxis.gridLineDashPhase = 0
        
        
        let leftAxis = viewLineChartStatus.leftAxis
        leftAxis.removeAllLimitLines()
      
        leftAxis.axisMaximum = 100
        leftAxis.axisMinimum = 0
        leftAxis.gridLineDashLengths = [5, 5]
        leftAxis.drawLimitLinesBehindDataEnabled = true
        
        viewLineChartStatus.rightAxis.enabled = false
        
     
        viewLineChartStatus.legend.form = .line
        
        
        
        
        
//        imgViewSoda.loadGif(name: "soda_hello")
        
        self.title = "Share Lesson?"

        self.viewSorry.layer.borderColor = darkBlue.withAlphaComponent(0.5).cgColor
        self.viewSorry.layer.borderWidth = 1
        
        self.viewShareLesson.layer.borderColor = darkBlue.withAlphaComponent(0.5).cgColor
        self.viewShareLesson.layer.borderWidth = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
        
    }
    
    @IBAction func BackToHome(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowHome"), object: nil)
    }
    
    
    
    func setDataCount(_ count: Int) {
        let values = (0..<count).map { (i) -> ChartDataEntry in
            //let val = Double(arc4random_uniform(range) + 3)
            return ChartDataEntry(x: Double(i+1), y: Double(self.posStatPercentage[i]))
        }
        
        let set1 = LineChartDataSet(values: values, label: "")
        set1.drawIconsEnabled = false
        
        set1.lineDashLengths = [5, 2.5]
        set1.highlightLineDashLengths = [5, 2.5]
        set1.setColor(.blue)
        set1.setCircleColor(.blue)
        set1.lineWidth = 1
        set1.circleRadius = 5
        set1.drawCircleHoleEnabled = false
        set1.valueFont = .systemFont(ofSize: 10)
        set1.formLineDashLengths = [5, 2.5]
        set1.formLineWidth = 1
        set1.formSize = 15
        
        let gradientColors = [ChartColorTemplates.colorFromString("#1e79e6").cgColor,
                              ChartColorTemplates.colorFromString("#ffffff").cgColor]
        let gradient = CGGradient(colorsSpace: nil, colors: gradientColors as CFArray, locations: nil)!
        
        set1.fillAlpha = 1
        set1.fill = Fill(linearGradient: gradient, angle: 90) //.linearGradient(gradient, angle: 90)
        set1.drawFilledEnabled = true
        
        let data = LineChartData(dataSet: set1)
        
        self.viewLineChartStatus.data = data
    }
    
   

}
