//
//  HomePageViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 7/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class HomePageViewController: UIPageViewController, UIPageViewControllerDataSource {

     weak var homePageDelegate: HomePageViewControllerDelegate?
    
    lazy var subViewControllers:[UIViewController] = {
        return [
           UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage1VC") as! HomePage1VC,
           UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage2VC") as! HomePage2VC,
          
            
        ]
    }()
    
//     UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage3VC") as! HomePage3VC
    
    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
        dataSource = self
        
        
     homePageDelegate?.homePageViewController(homePageViewController: self, didUpdatePageCount: subViewControllers.count)
        
        
        setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)
    }

   //MARK - UIPageViewControllerDataSource
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex:Int = subViewControllers.index(of: viewController) ?? 0
        if(currentIndex <= 0) {
            return nil
        }
        return subViewControllers[currentIndex-1]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentIndex:Int = subViewControllers.index(of: viewController) ?? 0
        if(currentIndex >= subViewControllers.count-1) {
            return nil
        }
        return subViewControllers[currentIndex+1]
    }
    
//    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
//        return subViewControllers.count
//    }
//
//    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
//        guard let firstViewController = viewControllers?.first,
//            let firstViewControllerIndex = subViewControllers.index(of: firstViewController) else {
//                return 0
//        }
//
//        return firstViewControllerIndex
//    }
    

}

extension HomePageViewController: UIPageViewControllerDelegate {

    func pageViewController(_ pageViewController: UIPageViewController,
                            didFinishAnimating finished: Bool,
                            previousViewControllers: [UIViewController],
                            transitionCompleted completed: Bool) {
        if let firstViewController = viewControllers?.first,
            let index = subViewControllers.index(of: firstViewController) {
            
            homePageDelegate?.homePageViewController(homePageViewController: self, didUpdatePageIndex: index)
           
        }
    }

}

protocol HomePageViewControllerDelegate: class {
    
    /**
     Called when the number of pages is updated.
     
     - parameter tutorialPageViewController: the TutorialPageViewController instance
     - parameter count: the total number of pages.
     */
    func homePageViewController(homePageViewController: HomePageViewController,
                                    didUpdatePageCount count: Int)
    
    /**
     Called when the current index is updated.
     
     - parameter tutorialPageViewController: the TutorialPageViewController instance
     - parameter index: the index of the currently visible page.
     */
    func homePageViewController(homePageViewController: HomePageViewController,
                                    didUpdatePageIndex index: Int)
    
}
