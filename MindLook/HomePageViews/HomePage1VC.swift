//
//  HomePage1VC.swift
//  UMEPlace
//
//  Created by Arjay Niones on 7/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import SwiftGifOrigin
import Charts


class VideoPlayerView: UIView{
    
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        //let urlString = " link here..."
        
        //if let url = NSURL(string: urlString)
//         if let path = Bundle.main.path(forResource: "video", ofType: "mp4")
//        {
//
//            let url = URL(fileURLWithPath: path)
//            
//            let player = AVPlayer(url: url as URL)
//
//            let playerLayer = AVPlayerLayer(player: player)
//            self.layer.addSublayer(playerLayer)
//            playerLayer.frame = self.frame
//
//            player.play()
//        }
    }
        required init?(coder aDecoder: NSCoder){
            fatalError("int(coder:) has not been implemented")
        }
    }




class HomePage1VC: UIViewController, ChartViewDelegate {
    
    var posStatDate: [String]!
    var posStatPercentage:  [Double]!
    
    
     let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)

    @IBOutlet weak var viewLineChartStatus: LineChartView!
    
    @IBOutlet weak var imgViewSoda: UIImageView!
    
    @IBOutlet weak var lblDateTop: UILabel!
    
    @IBOutlet weak var lblGreetings: UILabel!
    
    @IBOutlet weak var btnAns1: UIButton!
    
    @IBOutlet weak var btnAns2: UIButton!
    
    @IBOutlet weak var btnAns3: UIButton!
    
    @IBOutlet weak var btnAns4: UIButton!
    
    @IBOutlet weak var imgAns1: UIImageView!
    
    @IBOutlet weak var imgAns2: UIImageView!
    
    @IBOutlet weak var imgAns3: UIImageView!
    
    @IBOutlet weak var imgAns4: UIImageView!
    
    
    
    
    @IBAction func showPositivePageFeelGood(_ sender: Any) {
         NotificationCenter.default.post(name: NSNotification.Name("ShowPositivePage"), object: nil)
        //set something for positive 1
        
    }
    @IBAction func showPositivePageAmOK(_ sender: Any) {
         NotificationCenter.default.post(name: NSNotification.Name("ShowPositivePage"), object: nil)
        
        //set something for positive 2
    }
    
    @IBAction func showNegativeAmOK(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowNegativePage"), object: nil)
    }
    
    @IBAction func showNegativeFeelBad(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowNegativePage"), object: nil)
    }
    
    //code to add image background in uiview
    /* let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    backgroundImage.image = UIImage(named: "RubberMat")
    backgroundImage.contentMode =  UIViewContentMode.scaleAspectFill
    self.view.insertSubview(backgroundImage, at: 0)*/
    
    
//        if let path = Bundle.main.path(forResource: "video", ofType: "mp4")
//
//        {
//            let video = AVPlayer(url: URL(fileURLWithPath: path))
//            let videoPlayer = AVPlayerViewController()
//            videoPlayer.player = video
//
//            present(videoPlayer, animated: true, completion: {
//                video.play()
//            })
        
       
    var avPlayer: AVPlayer!
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
        
        
        btnAns1.layer.borderWidth = 1
        btnAns1.layer.borderColor = darkBlue.cgColor
        
        btnAns2.layer.borderWidth = 1
        btnAns2.layer.borderColor = darkBlue.cgColor
        
        btnAns3.layer.borderWidth = 1
        btnAns3.layer.borderColor = darkBlue.cgColor
        
        btnAns4.layer.borderWidth = 1
        btnAns4.layer.borderColor = darkBlue.cgColor
        
//        imgViewSoda.loadGif(name: "soda_hello")
        
//        let sodaGif = UIImage.gif(name: "dancebot-3-sm")
//
//        self.imgViewSoda.image = sodaGif
        
        
//        if let path = Bundle.main.path(forResource: "video", ofType: "mp4")
//        {
//
//            let url = URL(fileURLWithPath: path)
//
//            let player = AVPlayer(url: url as URL)
//
//            let playerLayer = AVPlayerLayer(player: player)
//            self.viewPlayer.layer.addSublayer(playerLayer)
//            playerLayer.frame = self.viewPlayer.frame
//
//            player.play()
//        }
        
        //code from stack overflow
        if let filepath: String = Bundle.main.path(forResource: "video", ofType: "mp4"){
            let fileURL = URL.init(fileURLWithPath: filepath)
            
            
                avPlayer = AVPlayer(url: fileURL)
            
            
                let avPlayerController = AVPlayerViewController()
                avPlayerController.player = avPlayer
                avPlayerController.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            
                //  hide show control
                avPlayerController.showsPlaybackControls = false
                // play video
            
                avPlayerController.player?.play()
                //self.viewPlayer.addSubview(avPlayerController.view)
        }
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


class VideoLauncher: NSObject {
    func showVideoLauncher() {
        
        if let keyWindow = UIApplication.shared.keyWindow {
            let view = UIView(frame: keyWindow.frame)
            view.backgroundColor = UIColor.black
            
            view.frame = CGRect(x: keyWindow.frame.width - 10, y: keyWindow.frame.height - 20, width: 10, height: 10)
            
            let height = keyWindow.frame.width * 9 / 16
            let videoPlayerFrame = CGRect(x: 0, y: 0, width: keyWindow.frame.width, height: height)
            
            let videoPlayerView = VideoPlayerView(frame: videoPlayerFrame)
            view.addSubview(videoPlayerView)
            
            keyWindow.addSubview(view)
            
          
            
        }
    }
    
}
