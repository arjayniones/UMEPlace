//
//  MainHomePageVC.swift
//  UMEPlace
//
//  Created by Arjay Niones on 7/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit



class MainHomePageVC: UIViewController {

    @IBOutlet weak var homePageControl: UIPageControl!
    
    @IBOutlet weak var containerView: UIView!
  
    
    func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let homePageViewController = segue.destination as? HomePageViewController {
            homePageViewController.homePageDelegate = self
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.navigationItem.title = "HOME"
    }
    

}

extension MainHomePageVC: HomePageViewControllerDelegate {
    
    func homePageViewController(homePageViewController: HomePageViewController,
                                    didUpdatePageCount count: Int) {
        homePageControl.numberOfPages = count
        
    }
    
    func homePageViewController(homePageViewController: HomePageViewController,
                                    didUpdatePageIndex index: Int) {
        homePageControl.currentPage = index
        
    }
    
}
