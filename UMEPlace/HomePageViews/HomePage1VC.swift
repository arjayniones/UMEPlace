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




class HomePage1VC: UIViewController {
    
     let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)

    @IBOutlet weak var viewPlayer: UIView!
   
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
                self.viewPlayer.addSubview(avPlayerController.view)
        }
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
