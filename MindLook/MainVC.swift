//
//  MainVC.swift
//  UMEPlace
//
//  Created by Arjay Niones on 6/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var mainContainerView: UIView!
    
    @IBOutlet weak var mainNavigationBarTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //humberger menu pages notifications
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showProfile),
                                               name: Notification.Name("ShowProfile"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSettings),
                                               name: Notification.Name("ShowSettings"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSignIn),
                                               name: Notification.Name("ShowSignIn"),
                                               object: nil )
        
        
        //bottom and side menu pages notifications
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showHome),
                                               name: Notification.Name("ShowHome"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showChat),
                                               name: Notification.Name("ShowChat"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showMessages),
                                               name: Notification.Name("ShowMessages"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showEvent),
                                               name: Notification.Name("ShowEvent"),
                                               object: nil )
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showShareLearn),
                                               name: Notification.Name("ShowShareLearn"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showAdvise),
                                               name: Notification.Name("ShowAdvise"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showPopUp),
                                               name: Notification.Name("ShowPopUp"),
                                               object: nil )
        
        
        //notifications for outside pages navigation
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showPositivePage),
                                               name: Notification.Name("ShowPositivePage"),
                                               object: nil )
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showNegativePage),
                                               name: Notification.Name("ShowNegativePage"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showInputPageShareLesson),
                                               name: Notification.Name("ShowInputPageShareLesson"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showInputPageAskAdvise),
                                               name: Notification.Name("ShowInputPageAskAdvise"),
                                               object: nil )
        
       //ShareLessonDetailsView
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showShareLessonDetailsPage),
                                               name: Notification.Name("ShowShareLessonDetailsPage"),
                                               object: nil )
        
        //AdviceDetailsView
        NotificationCenter.default.addObserver(self,
        selector: #selector(showAdviceDetailsPage),
        name: Notification.Name("ShowAdviceDetailsPage"),
        object: nil )
        
      
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showLessonCommentsPage),
                                               name: Notification.Name("ShowLessonCommentsPage"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showFullStoryLessonsPage),
                                               name: Notification.Name("ShowFullStoryLessonsPage"),
                                               object: nil )
        
        
        
        //ShowPeoplesAdvicesPage
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showPeoplesAdvicesPage),
                                               name: Notification.Name("ShowPeoplesAdvicesPage"),
                                               object: nil )
        
        //ShowFullStoryAdvicesPage
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showFullStoryAdvicesPage),
                                               name: Notification.Name("ShowFullStoryAdvicesPage"),
                                               object: nil )
        
        //show bottom menu when home is loaded
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
        
        
        //Side menu navigation
        
        //ShowMindDiary
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showMindDiary),
                                               name: Notification.Name("ShowMindDiaryPage"),
                                               object: nil )
        
        //ShowWLAChart
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showWLAChart),
                                               name: Notification.Name("ShowWLAChartPage"),
                                               object: nil )
        
        //ShowAdvicesOwner
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showAdvicesOwnerPage),
                                               name: Notification.Name("ShowAdvicesActivitiesPage"),
                                               object: nil )
        
        //ShowLessonsOwner
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showLessonsOwnerPage),
                                               name: Notification.Name("ShowLessonsActivitiesPage"),
                                               object: nil )
        
        
        //Show Food and Things to Soda
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showGiveFoodToSoda),
                                               name: Notification.Name("ShowGiveFoodToSoda"),
                                               object: nil )
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showGiveThingsToSoda),
                                               name: Notification.Name("ShowGiveThingsToSoda"),
                                               object: nil )
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
    }
    
    
    
    
    
    //functions for clicking menus
    
    //humberger menu actions
    @objc func showProfile(){
        
        performSegue(withIdentifier: "ShowProfile", sender: nil)
        
        self.mainNavigationBarTitle.title = "PROFILE"
    }
    
    @objc func showSettings(){
        performSegue(withIdentifier: "ShowSettings", sender: nil)
        
        self.mainNavigationBarTitle.title = "SETTINGS"
    }
    @objc func showSignIn(){
        performSegue(withIdentifier: "ShowSignIn", sender: nil)
        self.mainNavigationBarTitle.title = "SIGN IN"
    }
    
    //bottom and side menu actions
    
    @objc func showHome(){
        
       
//        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
        //performSegue(withIdentifier: "ShowChat", sender: nil)
        self.mainNavigationBarTitle.title = "HOME"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "homePage") as! MainHomePageVC
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
    }
    
    
    
    
    
    @objc func showChat(){
        
        //performSegue(withIdentifier: "ShowChat", sender: nil)
        self.mainNavigationBarTitle.title = "CHAT"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "chatPage") as! ChatPageViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
    }
    
    @objc func showMessages(){
        //performSegue(withIdentifier: "ShowMessages", sender: nil)
        self.mainNavigationBarTitle.title = "MESSAGES"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "messagesPage") as! MessagesPageViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
    }
    @objc func showEvent(){
        //performSegue(withIdentifier: "ShowHistory", sender: nil)
        self.mainNavigationBarTitle.title = "EVENTS"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "eventPage") as! EventPageViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
    }
    @objc func showShareLearn(){
        
        //performSegue(withIdentifier: "ShowShare", sender: nil)
        self.mainNavigationBarTitle.title = "LESSONS"
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "shareLearnPage") as! ShareLearnViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
    }
    
    @objc func showAdvise(){
        //performSegue(withIdentifier: "ShowLearnings", sender: nil)
        self.mainNavigationBarTitle.title = "ADVISES"
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "advisePage") as! AdvicePageViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
    }
    @objc func showPopUp(){
        //performSegue(withIdentifier: "ShowAdvice", sender: nil)
        
       
    }

  @IBAction func onSideMenuTapped(){
    print("Toggle Side Menu")
    NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    
    }
    
    @IBAction func onHomeMenuTapped(_ sender: Any) {
        
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenuForHome"), object: nil)
        hideKeyboardWhenTappedAround()
        
          NotificationCenter.default.post(name: NSNotification.Name("ShowBottomMenu"), object: nil)
        self.mainNavigationBarTitle.title = "HOME"
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "homePage") as! MainHomePageVC
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
    }
    
    @objc func showPositivePage(){
        //performSegue(withIdentifier: "ShowAdvice", sender: nil)
        
        self.mainNavigationBarTitle.title = "Share Lesson?"
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "positivePage") as! PositivePageShareLessonViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
    }
    
    @objc func showNegativePage(){
        //performSegue(withIdentifier: "ShowAdvice", sender: nil)
        
        self.mainNavigationBarTitle.title = "Ask for Advise?"
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "negativePage") as! NegativePageAdviseViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
    }
    
    
    //Open Outside View Controllers
    //Function to navigate from main
    @objc func showInputPageShareLesson(){
        performSegue(withIdentifier: "ShowInputPageShareLesson", sender: nil)
        

        self.navigationItem.setHidesBackButton(true, animated:true);
         //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    @objc func showInputPageAskAdvise(){
        performSegue(withIdentifier: "ShowInputPageAskAdvise", sender: nil)
        
        

        self.navigationItem.setHidesBackButton(true, animated:true);
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    //perform segues
    
    @objc func showGiveFoodToSoda(){
        performSegue(withIdentifier: "ShowGiveFoodPage", sender: nil)
        
        
        
       
        
         self.navigationItem.setHidesBackButton(true, animated:true);
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    @objc func showGiveThingsToSoda(){
        performSegue(withIdentifier: "GiveThingsPage", sender: nil)
        
        
        
        self.navigationItem.setHidesBackButton(true, animated:true);
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    
    
    
    
    @objc func showShareLessonDetailsPage(){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "ShareLessonDetailsView") as! ShareLessonDetailsViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    @objc func showAdviceDetailsPage(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "AdviceDetailsView") as! AdviceDetailsViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    
    
    
    //ShowLessonCommentsPage
    
    @objc func showLessonCommentsPage(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "LessonCommentsPage") as! ShareLessonCommentFeedViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    @objc func showFullStoryLessonsPage(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "FullStoryLessonsPage") as! FullStoryLessonViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    //showPeoplesAdvicesPage
    @objc func showPeoplesAdvicesPage(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "PeoplesAdvicesPage") as! PeoplesAdvicesFeedViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    //ShowFullStoryAdvicesPage
    
    @objc func showFullStoryAdvicesPage(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "FullStoryAdvicesPage") as! FullStoryAdviceViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    //Side Menu Navigation Functions
    @objc func showMindDiary(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "MindDiaryPage") as! MindDiaryPageViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    @objc func showWLAChart(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "WLAChartPage") as! WLAChartAnalysisPageViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    @objc func showAdvicesOwnerPage(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "AdvicesOwnerPage") as! AdvicesOwnerPageViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    @objc func showLessonsOwnerPage(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewController(withIdentifier: "LessonsOwnerPage") as! LessonsOwnerPageViewController
        
        //add as a childviewcontroller
        addChildViewController(controller)
        
        // Add the child's View as a subview
        self.mainContainerView.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // tell the childviewcontroller it's contained in it's parent
        controller.didMove(toParentViewController: self)
        
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
