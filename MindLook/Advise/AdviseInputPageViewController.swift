//
//  AdviseInputPageViewController.swift
//  UMEPlace
//
//  Created by Arjay Niones on 12/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit

class AdviseInputPageViewController: UIViewController, UITextViewDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    //arrays for options
    
    let subjectOptions = ["I", "Someone", "Something"]
    let verbOptions = ["Damage", "Do", "Eat", "Get", "Hear", "Help", "Hit/Hurt", "Lose", "Make", "Say", "See", "Smell","Think", "Touch"]
    let objectOptions = ["Me/Myself","Mine", "Nothing", "Someone", "Something"]
    
    var numItems = 0
    
    var selectedPicker = ""
    
    let darkBlue = UIColor(red:0.22, green:0.42, blue:0.80, alpha:1.0)
    let lightgray = UIColor(red:0.87, green:0.88, blue:0.90, alpha:1.0)
    
    var selectedStatus = " "
    var selectedFeelings = " "
    var selectedSubject = ""
    var selectedVerb = ""
    var selectedObject = ""
    
    var isFeelGoodSelected = false
    var isAmOKSelected = false
    var isFeelBadSelected = false
    var isAmNotOKSelected = false
    
    var isfeeling1Selected = false
    var isfeeling2Selected = false
    var isfeeling3Selected = false
    var isfeeling4Selected = false
    var isfeeling5Selected = false
    var isfeeling6Selected = false
    var isfeeling7Selected = false
    var isfeeling8Selected = false
    
    
    var isPhysicalBodySelected = false
    var isMentalStateSelected = false
    var isSocialStatusSelected = false
    var isFinanceSelected = false
    var isPropertySelected = false
    var isMindsetSelected = false
    var isRelationshipSelected = false
    var isWayOfLifSelected = false
    
    var isVeryLowSelected = false
    var isLowSelected = false
    var isMediumSelected = false
    var isHighSelected = false
    var isVeryHighSelected = false
    
    var isW3Selected = false
    var isW4Selected = false
    var isL3Selected = false
    var isL4Selected = false
    var isA3Selected = false
    var isA4Selected = false
    
    var isEveryoneSelected = false
    var isNobodySelected = false
    
    var selectedEffectsOnMeValues = [String]()
    var valueToRemoveOnEffectsOnMe = [String]()
    
    var selectedRootCause = ""

    @IBOutlet weak var lblMyQuestions: UILabel!
    
    @IBOutlet weak var txtMyQuestion: UITextView!
    
    @IBOutlet weak var lblMyStoryInBrief: UILabel!
    
    @IBOutlet weak var txtViewMyStoryInBrief: UITextView!
    
    @IBOutlet weak var lblMyFullStory: UILabel!
    
    @IBOutlet weak var txtViewMyFullStory: UITextView!
    
    @IBOutlet weak var lblTagStory: UILabel!
    
    @IBOutlet weak var txtViewTagStory: UITextView!
    
    @IBOutlet weak var lblMyStatusStory: UILabel!
    
    @IBOutlet weak var btnFeelGood: UIButton!
    
    @IBOutlet weak var imgFeelGoodPlus: UIImageView!
    @IBOutlet weak var viewFeelGood: UIView!
    
    @IBOutlet weak var btnAmOK: UIButton!
    
    @IBOutlet weak var imgAmOKPlus: UIImageView!
    
    @IBOutlet weak var viewImOK: UIView!
    
    @IBOutlet weak var btnFeelBad: UIButton!
    
    @IBOutlet weak var imgFeelBadMinus: UIImageView!
    
    @IBOutlet weak var viewFeelBad: UIView!
    
    @IBOutlet weak var btnNotOK: UIButton!
    
    @IBOutlet weak var imgAmNotOKMinus: UIImageView!
    
    @IBOutlet weak var viewNotOK: UIView!
    
    @IBOutlet weak var lblMyFeelings: UILabel!
    
    @IBOutlet weak var btnAngry: UIButton!
    
    @IBOutlet weak var viewAngry: UIView!
    
    @IBOutlet weak var lblFeeling1: UILabel!
    @IBOutlet weak var btnAnnoyed: UIButton!
    
    @IBOutlet weak var viewAnnoyed: UIView!
    
    @IBOutlet weak var lblFeeling2: UILabel!
    
    @IBOutlet weak var btnWorried: UIButton!
    
    @IBOutlet weak var lblFeeling3: UILabel!
    
    
    @IBOutlet weak var viewWorried: UIView!
    @IBOutlet weak var btnStressed: UIButton!
    
    @IBOutlet weak var viewStressed: UIView!
    
    @IBOutlet weak var lblFeeling4: UILabel!
    
    @IBOutlet weak var btnBored: UIButton!
    
    @IBOutlet weak var viewBored: UIView!
    
    @IBOutlet weak var lblFeeling5: UILabel!
    
    @IBOutlet weak var btnLonely: UIButton!
    
    @IBOutlet weak var viewLonely: UIView!
    
    @IBOutlet weak var lblFeeling6: UILabel!
    
    @IBOutlet weak var btnSad: UIButton!
    
    @IBOutlet weak var viewSad: UIView!
    
    @IBOutlet weak var lblFeeling7: UILabel!
    
    @IBOutlet weak var btnDipressed: UIButton!
    
    @IBOutlet weak var viewDepressed: UIView!
    
    @IBOutlet weak var lblFeeling8: UILabel!
    
    @IBOutlet weak var txtOtherFeelings: UITextField!
    
    @IBOutlet weak var lblAboutMeStory: UILabel!
    
    @IBOutlet weak var lblSubject: UILabel!
    
    @IBOutlet weak var lblVerb: UILabel!
    
    @IBOutlet weak var lblObject: UILabel!
    
    @IBOutlet weak var btnSubject: UIButton!
    
    @IBOutlet weak var btnVerb: UIButton!
    
    @IBOutlet weak var btnObject: UIButton!
    
    @IBOutlet weak var lblEffectsOnMe: UILabel!
    
    
    @IBOutlet weak var btnPhysicalBody: UIButton!
    
    @IBOutlet weak var btnMentalState: UIButton!
    
    @IBOutlet weak var btnSocialStatus: UIButton!
    
    @IBOutlet weak var btnFinance: UIButton!
    
    @IBOutlet weak var btnProperty: UIButton!
    
    @IBOutlet weak var btnMindset: UIButton!
    
    @IBOutlet weak var btnRelationship: UIButton!
    
    @IBOutlet weak var btnWayOfLife: UIButton!
    
    
    @IBOutlet weak var btnVeryLow: HalfRoundButton!
    
    @IBOutlet weak var btnLow: HalfRoundButton!
    
    @IBOutlet weak var btnMedium: HalfRoundButton!
    
    @IBOutlet weak var btnHigh: HalfRoundButton!
    
    @IBOutlet weak var btnVeryHigh: HalfRoundButton!
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var lblRootCause: UILabel!
    
    @IBOutlet weak var lblWants: UILabel!
    
    @IBOutlet weak var viewWants: UIView!
    
    @IBOutlet weak var btnWants1: UIButton!
   
    
    @IBOutlet weak var lblW1Text: UILabel!
    @IBOutlet weak var imgWants1: UIImageView!
    
    @IBOutlet weak var viewWants2: UIView!
    
    
    @IBOutlet weak var imgWants2: UIImageView!
    
    @IBOutlet weak var btnWants2: UIButton!
    
    @IBOutlet weak var lblW2Text: UILabel!
    
    @IBOutlet weak var lblLikes: UILabel!
    
    @IBOutlet weak var viewLikes1: UIView!
    
    @IBOutlet weak var btnLikes1: UIButton!
    
    @IBOutlet weak var imgLikes1: UIImageView!
    
    
    @IBOutlet weak var lblL1Text: UILabel!
    
    @IBOutlet weak var viewLikes2: UIView!
    
    @IBOutlet weak var btnLikes2: UIButton!
    
    @IBOutlet weak var imgLikes2: UIImageView!
    
    
    @IBOutlet weak var lblL2Text: UILabel!
    
    
    @IBOutlet weak var lblAcceptance: UILabel!
    
    @IBOutlet weak var viewAcceptance1: UIView!
    
    @IBOutlet weak var btnAcceptance: UIButton!
    
    @IBOutlet weak var imgAcceptance1: UIImageView!
    
    
    @IBOutlet weak var lblA1Text: UILabel!
    
    @IBOutlet weak var viewAcceptance2: UIView!
    
    @IBOutlet weak var btnAcceptance2: UIButton!
    
    
    @IBOutlet weak var imgAcceptance2: UIImageView!
    
    @IBOutlet weak var lblA2Text: UILabel!
    
    
    @IBOutlet weak var btnCancel: UIButton!
    
    @IBOutlet weak var btnSend: UIButton!
    
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    @IBOutlet weak var txtMyNote: UITextView!
    
    @IBOutlet weak var viewEveryone: UIView!
    
    @IBOutlet weak var lblEveryone: UILabel!
    
    @IBOutlet weak var lblEveryoneContent: UILabel!
    
    @IBOutlet weak var viewNobody: UIView!
    
    @IBOutlet weak var lblNobody: UILabel!
    
    @IBOutlet weak var lblNobodyContent: UILabel!
    
    
    
    
    
    
    
    
    @IBAction func backHome(_ sender: Any) {
       
      _ = navigationController?.popViewController(animated: true)
    }
    
   //submit to the server
    @IBAction func sendInput(_ sender: Any) {
        
        print("My Question: \(txtMyQuestion.text as String)\nMy Story in Brief: \(txtViewMyStoryInBrief.text as String)\nMy Full Story: \(txtViewMyFullStory.text as String)\nTags for My Story: \(txtViewTagStory.text as String)\nMy Status in My Story: \(selectedStatus)\nMy Feelings & Emotions in My Story: \(selectedFeelings)\nAbout me in the Story \nSubject: \(selectedSubject)\nVerb: \(selectedVerb)\nObject: \(selectedObject)\nEffects on me: \(selectedEffectsOnMeValues)\nRoot Cause of My Story: \(selectedRootCause)")
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.navigationItem.setHidesBackButton(true, animated:true);
        
        self.txtMyQuestion.delegate = self
        self.txtViewMyStoryInBrief.delegate = self
        self.txtViewMyFullStory.delegate = self
        self.txtViewTagStory.delegate = self
        
        //properties of the textView color
        self.txtMyQuestion.textColor = UIColor.lightGray
        self.txtViewMyStoryInBrief.textColor = UIColor.lightGray
        self.txtViewMyFullStory.textColor = UIColor.lightGray
        self.txtViewTagStory.textColor = UIColor.lightGray
        
        //txtViewMyLesson Property round corner
        self.txtMyQuestion.layer.cornerRadius = 10
        self.txtMyQuestion.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.txtMyQuestion.layer.borderWidth = 0.5
        self.txtMyQuestion.clipsToBounds = true
        
        //txtViewMyStoryInBrief Property round corner
        self.txtViewMyStoryInBrief.layer.cornerRadius = 10
        self.txtViewMyStoryInBrief.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.txtViewMyStoryInBrief.layer.borderWidth = 0.5
        self.txtViewMyStoryInBrief.clipsToBounds = true
        
        //txtViewMyFullStory Property round corner
        self.txtViewMyFullStory.layer.cornerRadius = 10
        self.txtViewMyFullStory.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.txtViewMyFullStory.layer.borderWidth = 0.5
        self.txtViewMyFullStory.clipsToBounds = true
        
        //txtViewTagStory Property round corner
        self.txtViewTagStory.layer.cornerRadius = 10
        self.txtViewTagStory.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.txtViewTagStory.layer.borderWidth = 0.5
        self.txtViewTagStory.clipsToBounds = true
        
        //assign text to textview as placeholder effect
        self.txtMyQuestion.text = "Maximum 250 Characters"
        self.txtViewMyStoryInBrief.text = "Maximum 250 Characters"
        self.txtViewMyFullStory.text = "Maximum 5,000 Characters"
        self.txtViewTagStory.text = "Enter tag words to your story"
        
        //My Status botton properties round corner
        
        //btnFeelGood
        self.btnFeelGood.layer.cornerRadius = 15
        self.btnFeelGood.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnFeelGood.layer.borderWidth = 0.5
        self.btnFeelGood.clipsToBounds = true
        
        //btnAmOK
        self.btnAmOK.layer.cornerRadius = 15
        self.btnAmOK.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnAmOK.layer.borderWidth = 0.5
        self.btnAmOK.clipsToBounds = true
        
        //btnFeelBad
        self.btnFeelBad.layer.cornerRadius = 15
        self.btnFeelBad.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnFeelBad.layer.borderWidth = 0.5
        self.btnFeelBad.clipsToBounds = true
        
        //btnNotOK
        self.btnNotOK.layer.cornerRadius = 15
        self.btnNotOK.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnNotOK.layer.borderWidth = 0.5
        self.btnNotOK.clipsToBounds = true
        
        //btn status btn properties
        
        btnFeelGood.backgroundColor = lightgray
        btnAmOK.backgroundColor = lightgray
        btnFeelBad.backgroundColor = lightgray
        btnNotOK.backgroundColor = lightgray
        
        //About Me in My Story button properties round corner
        
        //
        
        //btnSubject
        self.btnSubject.layer.cornerRadius = 5
        self.btnSubject.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnSubject.layer.borderWidth = 0.5
        self.btnSubject.clipsToBounds = true
        
        //btnVerb
        self.btnVerb.layer.cornerRadius = 5
        self.btnVerb.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnVerb.layer.borderWidth = 0.5
        self.btnVerb.clipsToBounds = true
        
        //btnObject
        self.btnObject.layer.cornerRadius = 5
        self.btnObject.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnObject.layer.borderWidth = 0.5
        self.btnObject.clipsToBounds = true
        
        //btnPhysicalBody
        self.btnPhysicalBody.layer.cornerRadius = 5
        self.btnPhysicalBody.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnPhysicalBody.layer.borderWidth = 0.5
        self.btnPhysicalBody.clipsToBounds = true
        
        //btnMentalState
        self.btnMentalState.layer.cornerRadius = 5
        self.btnMentalState.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnMentalState.layer.borderWidth = 0.5
        self.btnMentalState.clipsToBounds = true
        
        //btnSocialStatus
        self.btnSocialStatus.layer.cornerRadius = 5
        self.btnSocialStatus.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnSocialStatus.layer.borderWidth = 0.5
        self.btnSocialStatus.clipsToBounds = true
        
        //btnFinance
        self.btnFinance.layer.cornerRadius = 5
        self.btnFinance.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnFinance.layer.borderWidth = 0.5
        self.btnFinance.clipsToBounds = true
        
        //btnProperty
        self.btnProperty.layer.cornerRadius = 5
        self.btnProperty.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnProperty.layer.borderWidth = 0.5
        self.btnProperty.clipsToBounds = true
        
        //btnMindset
        self.btnMindset.layer.cornerRadius = 5
        self.btnMindset.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnMindset.layer.borderWidth = 0.5
        self.btnMindset.clipsToBounds = true
        
        //btnRelationship
        self.btnRelationship.layer.cornerRadius = 5
        self.btnRelationship.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnRelationship.layer.borderWidth = 0.5
        self.btnRelationship.clipsToBounds = true
        
        //btnWayOfLife
        self.btnWayOfLife.layer.cornerRadius = 5
        self.btnWayOfLife.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnWayOfLife.layer.borderWidth = 0.5
        self.btnWayOfLife.clipsToBounds = true
        
        
        //properties if Scale of Effects
        
        self.btnVeryLow.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnVeryLow.layer.borderWidth = 0.5
        
        self.btnLow.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnLow.layer.borderWidth = 0.5
        
        self.btnMedium.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnMedium.layer.borderWidth = 0.5
        
        self.btnHigh.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnHigh.layer.borderWidth = 0.5
        
        self.btnVeryHigh.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.btnVeryHigh.layer.borderWidth = 0.5
        
        
        //Root Cause of My Status views properties round corner
        self.viewWants.layer.cornerRadius = 10
        self.viewWants.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewWants.layer.borderWidth = 0.5
        self.viewWants.clipsToBounds = true
        
        self.viewWants2.layer.cornerRadius = 10
        self.viewWants2.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewWants2.layer.borderWidth = 0.5
        self.viewWants2.clipsToBounds = true
       
        self.viewLikes1.layer.cornerRadius = 10
        self.viewLikes1.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewLikes1.layer.borderWidth = 0.5
        self.viewLikes1.clipsToBounds = true
        
        self.viewLikes2.layer.cornerRadius = 10
        self.viewLikes2.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewLikes2.layer.borderWidth = 0.5
        self.viewLikes2.clipsToBounds = true
        
        self.viewAcceptance1.layer.cornerRadius = 10
        self.viewAcceptance1.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewAcceptance1.layer.borderWidth = 0.5
        self.viewAcceptance1.clipsToBounds = true
        
        self.viewAcceptance2.layer.cornerRadius = 10
        self.viewAcceptance2.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewAcceptance2.layer.borderWidth = 0.5
        self.viewAcceptance2.clipsToBounds = true
        
        
        //pickerView properties
        self.pickerView.isHidden = true
        self.pickerView.layer.borderColor = UIColor.gray.withAlphaComponent(1).cgColor
        self.pickerView.layer.borderWidth = 3
        self.pickerView.clipsToBounds = true
        
        
        
        // txt my note
        self.txtMyNote.layer.cornerRadius = 10
        self.txtMyNote.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.txtMyNote.layer.borderWidth = 1
        self.txtMyNote.clipsToBounds = true
        
        //view Everyone
        self.viewEveryone.layer.cornerRadius = 10
        self.viewEveryone.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewEveryone.layer.borderWidth = 1
        self.viewEveryone.clipsToBounds = true
        
        //view Nobody
        self.viewNobody.layer.cornerRadius = 10
        self.viewNobody.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.viewNobody.layer.borderWidth = 1
        self.viewNobody.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //placeholder func
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            //textView.text = "Placeholder"
            textView.textColor = UIColor.lightGray
            
            self.txtMyQuestion.text = "Maximum 250 Characters"
            self.txtViewMyStoryInBrief.text = "Maximum 250 Characters"
            self.txtViewMyFullStory.text = "Maximum 5,000 Characters"
            self.txtViewTagStory.text = "Enter tag words to your story"
        }
    }
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return numItems
    }
    
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //if statement for 3 options
        
        if (selectedPicker == "subject")
        {
            return subjectOptions[row]
        }
        else if (selectedPicker == "verb")
        {
            return verbOptions[row]
        }
        else if (selectedPicker == "object")
        {
            return objectOptions[row]
        }else{
            return ""
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //if statements for 3 options
        self.pickerView.isHidden = true
        
        if (selectedPicker == "subject")
        {
            self.btnSubject.setTitle(subjectOptions[row], for: UIControlState.normal)
            
            selectedSubject = subjectOptions[row]
        }
        else if (selectedPicker == "verb")
        {
            self.btnVerb.setTitle(verbOptions[row], for: UIControlState.normal)
            
            selectedVerb = verbOptions[row]
        }
        else if (selectedPicker == "object")
        {
            self.btnObject.setTitle(objectOptions[row], for: UIControlState.normal)
            selectedObject = objectOptions[row]
            
        }else{
            self.btnSubject.setTitle(" ", for: UIControlState.normal)
        }
        
        
    }
    
    //subject button function
    
    @IBAction func subjectClicked(_ sender: Any) {
        
        
        self.pickerView.isHidden = false
        self.selectedPicker = "subject"
        self.numItems = subjectOptions.count
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    //verb button function
    @IBAction func verbClicked(_ sender: Any) {
        self.pickerView.isHidden = false
        self.selectedPicker = "verb"
        self.numItems = verbOptions.count
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    //object button function
    @IBAction func objectClicked(_ sender: Any) {
        
        self.pickerView.isHidden = false
        self.selectedPicker = "object"
        self.numItems = objectOptions.count
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    //My Status in My Story button functions
    
    @IBAction func btnIFeelGoodClicked(_ sender: Any) {
        
        
        
        
        if isFeelGoodSelected == true{
            btnFeelGood.backgroundColor = lightgray
            btnAmOK.backgroundColor = lightgray
            btnFeelBad.backgroundColor = lightgray
            btnNotOK.backgroundColor = lightgray
            
            
            
            btnFeelGood.setTitleColor(darkBlue, for: .normal)
            
            imgFeelGoodPlus.image = UIImage(named: "sodaplus_unselected")
            
            btnAmOK.setTitleColor(darkBlue, for: .normal)
            
            imgAmOKPlus.image = UIImage(named: "sodaplus_unselected")
            btnFeelBad.setTitleColor(darkBlue, for: .normal)
            
            imgFeelBadMinus.image = UIImage(named: "sodaminus_unselected")
            btnNotOK.setTitleColor(darkBlue, for: .normal)
            
            imgAmNotOKMinus.image = UIImage(named: "sodaminus_unselected")
            
            selectedStatus = "-"
            
            
            isFeelGoodSelected = false
        }else{
            btnFeelGood.backgroundColor = darkBlue
            btnAmOK.backgroundColor = lightgray
            btnFeelBad.backgroundColor = lightgray
            btnNotOK.backgroundColor = lightgray
            
            btnFeelGood.setTitleColor(UIColor.white, for: .normal)
            
            imgFeelGoodPlus.image = UIImage(named: "sodahead_plus_white")
            btnAmOK.setTitleColor(darkBlue, for: .normal)
            
            imgAmOKPlus.image = UIImage(named: "sodaplus_unselected")
            
            btnFeelBad.setTitleColor(darkBlue, for: .normal)
            
            imgFeelBadMinus.image = UIImage(named: "sodaminus_unselected")
            btnNotOK.setTitleColor(darkBlue, for: .normal)
            
            imgAmNotOKMinus.image = UIImage(named: "sodaminus_unselected")
            
            selectedStatus = "I feel good"
            
            self.changeFeelingsPositive()
            isFeelGoodSelected = true
            isAmOKSelected = false
            isFeelBadSelected = false
            isAmNotOKSelected = false
            
        }
    }
    
    @IBAction func btnImOKClicked(_ sender: Any) {
        
        
        
        
        if isAmOKSelected == true {
            btnFeelGood.backgroundColor = lightgray
            btnAmOK.backgroundColor = lightgray
            btnFeelBad.backgroundColor = lightgray
            btnNotOK.backgroundColor = lightgray
            
            
            btnFeelGood.setTitleColor(darkBlue, for: .normal)
            
            imgFeelGoodPlus.image = UIImage(named: "sodaplus_unselected")
            btnAmOK.setTitleColor(darkBlue, for: .normal)
            
            imgAmOKPlus.image = UIImage(named: "sodaplus_unselected")
            btnFeelBad.setTitleColor(darkBlue, for: .normal)
            
            imgFeelBadMinus.image = UIImage(named: "sodaminus_unselected")
            btnNotOK.setTitleColor(darkBlue, for: .normal)
            
            imgAmNotOKMinus.image = UIImage(named: "sodaminus_unselected")
            
            selectedStatus = "-"
            isAmOKSelected = false
        }else{
            
            btnFeelGood.backgroundColor = lightgray
            btnAmOK.backgroundColor = darkBlue
            btnFeelBad.backgroundColor = lightgray
            btnNotOK.backgroundColor = lightgray
            
            btnFeelGood.setTitleColor(darkBlue, for: .normal)
            
            imgFeelGoodPlus.image = UIImage(named: "sodaplus_unselected")
            btnAmOK.setTitleColor(UIColor.white, for: .normal)
            
            imgAmOKPlus.image = UIImage(named: "sodahead_plus_white")
            
            btnFeelBad.setTitleColor(darkBlue, for: .normal)
            
            imgFeelBadMinus.image = UIImage(named: "sodaminus_unselected")
            btnNotOK.setTitleColor(darkBlue, for: .normal)
            
            imgAmNotOKMinus.image = UIImage(named: "sodaminus_unselected")
            
            selectedStatus = "I am OK"
            self.changeFeelingsPositive()
            isFeelGoodSelected = false
            isAmOKSelected = true
            isFeelBadSelected = false
            isAmNotOKSelected = false
            
        }
    }
    
    @IBAction func btnFeelBadClicked(_ sender: Any) {
        
        
        
        if isFeelBadSelected == true{
            
            btnFeelGood.backgroundColor = lightgray
            btnAmOK.backgroundColor = lightgray
            btnFeelBad.backgroundColor = lightgray
            btnNotOK.backgroundColor = lightgray
            
            btnFeelGood.setTitleColor(darkBlue, for: .normal)
            imgFeelGoodPlus.image = UIImage(named: "sodaplus_unselected")
            btnAmOK.setTitleColor(darkBlue, for: .normal)
            imgAmOKPlus.image = UIImage(named: "sodaplus_unselected")
            btnFeelBad.setTitleColor(darkBlue, for: .normal)
            imgFeelBadMinus.image = UIImage(named: "sodaminus_unselected")
            btnNotOK.setTitleColor(darkBlue, for: .normal)
            imgAmNotOKMinus.image = UIImage(named: "sodaminus_unselected")
            
            selectedStatus = "-"
            isFeelBadSelected = false
        }else{
            
            btnFeelGood.backgroundColor = lightgray
            btnAmOK.backgroundColor = lightgray
            btnFeelBad.backgroundColor = darkBlue
            btnNotOK.backgroundColor = lightgray
            
            btnFeelGood.setTitleColor(darkBlue, for: .normal)
            imgFeelGoodPlus.image = UIImage(named: "sodaplus_unselected")
            btnAmOK.setTitleColor(darkBlue, for: .normal)
            imgAmOKPlus.image = UIImage(named: "sodaplus_unselected")
            btnFeelBad.setTitleColor(UIColor.white, for: .normal)
            imgFeelBadMinus.image = UIImage(named: "sodahead_minus_white")
            btnNotOK.setTitleColor(darkBlue, for: .normal)
            imgAmNotOKMinus.image = UIImage(named: "sodaminus_unselected")
            
            selectedStatus = "I feel bad"
            self.changeFeelingsNegative()
            isFeelGoodSelected = false
            isAmOKSelected = false
            isFeelBadSelected = true
            isAmNotOKSelected = false
            
        }
    }
    
    @IBAction func btnNotOKClicked(_ sender: Any) {
        
        
        
        if isAmNotOKSelected == true {
            btnFeelGood.backgroundColor = lightgray
            btnAmOK.backgroundColor = lightgray
            btnFeelBad.backgroundColor = lightgray
            btnNotOK.backgroundColor = lightgray
            
            btnFeelGood.setTitleColor(darkBlue, for: .normal)
            imgFeelGoodPlus.image = UIImage(named: "sodaplus_unselected")
            btnAmOK.setTitleColor(darkBlue, for: .normal)
            imgAmOKPlus.image = UIImage(named: "sodaplus_unselected")
            btnFeelBad.setTitleColor(darkBlue, for: .normal)
            imgFeelBadMinus.image = UIImage(named: "sodaminus_unselected")
            btnNotOK.setTitleColor(darkBlue, for: .normal)
            imgAmNotOKMinus.image = UIImage(named: "sodaminus_unselected")
            
            
            
            selectedStatus = "-"
            isAmNotOKSelected = false
            
        }else{
            
            btnFeelGood.backgroundColor = lightgray
            btnAmOK.backgroundColor = lightgray
            btnFeelBad.backgroundColor = lightgray
            btnNotOK.backgroundColor = darkBlue
            
            btnFeelGood.setTitleColor(darkBlue, for: .normal)
            imgFeelGoodPlus.image = UIImage(named: "sodaplus_unselected")
            btnAmOK.setTitleColor(darkBlue, for: .normal)
            imgAmOKPlus.image = UIImage(named: "sodaplus_unselected")
            btnFeelBad.setTitleColor(darkBlue, for: .normal)
            imgFeelBadMinus.image = UIImage(named: "sodaminus_unselected")
            btnNotOK.setTitleColor(UIColor.white, for: .normal)
            imgAmNotOKMinus.image = UIImage(named: "sodahead_minus_white")
            
            selectedStatus = "I am not OK"
            self.changeFeelingsNegative()
            isFeelGoodSelected = false
            isAmOKSelected = false
            isFeelBadSelected = false
            isAmNotOKSelected = true
        }
    }
    
    //My Feelings and Emotions in My Story button functions
    
    @IBAction func btnAngryClicked(_ sender: Any) {
        
        if isfeeling1Selected == true {
        self.viewAngry.layer.cornerRadius = 0
        
            self.viewAngry.backgroundColor = UIColor.clear
        
        self.viewAngry.layer.borderWidth = 0
       
        
        
        viewAnnoyed.backgroundColor = UIColor.clear
        viewAnnoyed.layer.borderWidth = 0
        
        viewWorried.backgroundColor = UIColor.clear
        viewWorried.layer.borderWidth = 0
        
        viewStressed.backgroundColor = UIColor.clear
        viewStressed.layer.borderWidth = 0
        
        viewBored.backgroundColor = UIColor.clear
        viewBored.layer.borderWidth = 0
        
        viewLonely.backgroundColor = UIColor.clear
        viewLonely.layer.borderWidth = 0
        
        viewSad.backgroundColor = UIColor.clear
        viewSad.layer.borderWidth = 0
        
        viewDepressed.backgroundColor = UIColor.clear
        viewDepressed.layer.borderWidth = 0
        
        selectedFeelings = "-"
            
        isfeeling1Selected = false
            
        }else {
            self.viewAngry.layer.cornerRadius = 20
            
            self.viewAngry.backgroundColor = darkBlue
            self.viewAngry.layer.borderColor = UIColor.white.withAlphaComponent(1).cgColor
            self.viewAngry.layer.borderWidth = 2
            self.viewAngry.clipsToBounds = true
            
            
            viewAnnoyed.backgroundColor = UIColor.clear
            viewAnnoyed.layer.borderWidth = 0
            
            viewWorried.backgroundColor = UIColor.clear
            viewWorried.layer.borderWidth = 0
            
            viewStressed.backgroundColor = UIColor.clear
            viewStressed.layer.borderWidth = 0
            
            viewBored.backgroundColor = UIColor.clear
            viewBored.layer.borderWidth = 0
            
            viewLonely.backgroundColor = UIColor.clear
            viewLonely.layer.borderWidth = 0
            
            viewSad.backgroundColor = UIColor.clear
            viewSad.layer.borderWidth = 0
            
            viewDepressed.backgroundColor = UIColor.clear
            viewDepressed.layer.borderWidth = 0
            
            selectedFeelings = "Angry"
            
            isfeeling1Selected = true
            isfeeling2Selected = false
            isfeeling3Selected = false
            isfeeling4Selected = false
            isfeeling5Selected = false
            isfeeling6Selected = false
            isfeeling7Selected = false
            isfeeling8Selected = false
            
        }
    }
    
    @IBAction func btnAnnoyedClicked(_ sender: Any) {
        
        if isfeeling2Selected == true {
        self.viewAnnoyed.layer.cornerRadius = 0
        
        self.viewAnnoyed.backgroundColor = UIColor.clear
       
        self.viewAnnoyed.layer.borderWidth = 0
       
        
        
        viewAngry.backgroundColor = UIColor.clear
        viewAngry.layer.borderWidth = 0
        
        viewWorried.backgroundColor = UIColor.clear
        viewWorried.layer.borderWidth = 0
        
        viewStressed.backgroundColor = UIColor.clear
        viewStressed.layer.borderWidth = 0
        
        viewBored.backgroundColor = UIColor.clear
        viewBored.layer.borderWidth = 0
        
        viewLonely.backgroundColor = UIColor.clear
        viewLonely.layer.borderWidth = 0
        
        viewSad.backgroundColor = UIColor.clear
        viewSad.layer.borderWidth = 0
        
        viewDepressed.backgroundColor = UIColor.clear
        viewDepressed.layer.borderWidth = 0
        selectedFeelings = "-"
            
         isfeeling2Selected = false
        }else {
            
            self.viewAnnoyed.layer.cornerRadius = 20
            
            self.viewAnnoyed.backgroundColor = darkBlue
            self.viewAnnoyed.layer.borderColor = UIColor.white.withAlphaComponent(1).cgColor
            self.viewAnnoyed.layer.borderWidth = 2
            self.viewAnnoyed.clipsToBounds = true
            
            
            viewAngry.backgroundColor = UIColor.clear
            viewAngry.layer.borderWidth = 0
            
            viewWorried.backgroundColor = UIColor.clear
            viewWorried.layer.borderWidth = 0
            
            viewStressed.backgroundColor = UIColor.clear
            viewStressed.layer.borderWidth = 0
            
            viewBored.backgroundColor = UIColor.clear
            viewBored.layer.borderWidth = 0
            
            viewLonely.backgroundColor = UIColor.clear
            viewLonely.layer.borderWidth = 0
            
            viewSad.backgroundColor = UIColor.clear
            viewSad.layer.borderWidth = 0
            
            viewDepressed.backgroundColor = UIColor.clear
            viewDepressed.layer.borderWidth = 0
            selectedFeelings = "Annoyed"
            
            isfeeling1Selected = false
            isfeeling2Selected = true
            isfeeling3Selected = false
            isfeeling4Selected = false
            isfeeling5Selected = false
            isfeeling6Selected = false
            isfeeling7Selected = false
            isfeeling8Selected = false
            
            
            
        }
    }
    
    @IBAction func btnWorriedClicked(_ sender: Any) {
        
        if isfeeling3Selected == true {
        self.viewWorried.layer.cornerRadius = 0
        
        self.viewWorried.backgroundColor = UIColor.clear
        self.viewWorried.layer.borderColor = UIColor.white.withAlphaComponent(1).cgColor
        self.viewWorried.layer.borderWidth = 0
       
        
        viewAngry.backgroundColor = UIColor.clear
        viewAngry.layer.borderWidth = 0
        
        viewAnnoyed.backgroundColor = UIColor.clear
        viewAnnoyed.layer.borderWidth = 0
        
        viewStressed.backgroundColor = UIColor.clear
        viewStressed.layer.borderWidth = 0
        
        viewBored.backgroundColor = UIColor.clear
        viewBored.layer.borderWidth = 0
        
        viewLonely.backgroundColor = UIColor.clear
        viewLonely.layer.borderWidth = 0
        
        viewSad.backgroundColor = UIColor.clear
        viewSad.layer.borderWidth = 0
        
        viewDepressed.backgroundColor = UIColor.clear
        viewDepressed.layer.borderWidth = 0
        selectedFeelings = "-"
          
            isfeeling3Selected = false
            
        }else {
            
            self.viewWorried.layer.cornerRadius = 20
            
            self.viewWorried.backgroundColor = darkBlue
            self.viewWorried.layer.borderColor = UIColor.white.withAlphaComponent(1).cgColor
            self.viewWorried.layer.borderWidth = 2
            self.viewWorried.clipsToBounds = true
            
            
            viewAngry.backgroundColor = UIColor.clear
            viewAngry.layer.borderWidth = 0
            
            viewAnnoyed.backgroundColor = UIColor.clear
            viewAnnoyed.layer.borderWidth = 0
            
            viewStressed.backgroundColor = UIColor.clear
            viewStressed.layer.borderWidth = 0
            
            viewBored.backgroundColor = UIColor.clear
            viewBored.layer.borderWidth = 0
            
            viewLonely.backgroundColor = UIColor.clear
            viewLonely.layer.borderWidth = 0
            
            viewSad.backgroundColor = UIColor.clear
            viewSad.layer.borderWidth = 0
            
            viewDepressed.backgroundColor = UIColor.clear
            viewDepressed.layer.borderWidth = 0
            selectedFeelings = "Worried"
            
            isfeeling1Selected = false
            isfeeling2Selected = false
            isfeeling3Selected = true
            isfeeling4Selected = false
            isfeeling5Selected = false
            isfeeling6Selected = false
            isfeeling7Selected = false
            isfeeling8Selected = false
            
        }
    }
    
    @IBAction func btnStressedClicked(_ sender: Any) {
        
        
        if isfeeling4Selected == true {
            
        
        self.viewStressed.layer.cornerRadius = 0
        
        self.viewStressed.backgroundColor = UIColor.clear
        
        self.viewStressed.layer.borderWidth = 2
        
        
        
        viewAngry.backgroundColor = UIColor.clear
        viewAngry.layer.borderWidth = 0
        
        viewAnnoyed.backgroundColor = UIColor.clear
        viewAnnoyed.layer.borderWidth = 0
        
        viewWorried.backgroundColor = UIColor.clear
        viewWorried.layer.borderWidth = 0
        
        viewBored.backgroundColor = UIColor.clear
        viewBored.layer.borderWidth = 0
        
        viewLonely.backgroundColor = UIColor.clear
        viewLonely.layer.borderWidth = 0
        
        viewSad.backgroundColor = UIColor.clear
        viewSad.layer.borderWidth = 0
        
        viewDepressed.backgroundColor = UIColor.clear
        viewDepressed.layer.borderWidth = 0
        selectedFeelings = "-"
            
            isfeeling4Selected = false
            
        }else {
           
            self.viewStressed.layer.cornerRadius = 20
            
            self.viewStressed.backgroundColor = darkBlue
            self.viewStressed.layer.borderColor = UIColor.white.withAlphaComponent(1).cgColor
            self.viewStressed.layer.borderWidth = 2
            self.viewStressed.clipsToBounds = true
            
            
            viewAngry.backgroundColor = UIColor.clear
            viewAngry.layer.borderWidth = 0
            
            viewAnnoyed.backgroundColor = UIColor.clear
            viewAnnoyed.layer.borderWidth = 0
            
            viewWorried.backgroundColor = UIColor.clear
            viewWorried.layer.borderWidth = 0
            
            viewBored.backgroundColor = UIColor.clear
            viewBored.layer.borderWidth = 0
            
            viewLonely.backgroundColor = UIColor.clear
            viewLonely.layer.borderWidth = 0
            
            viewSad.backgroundColor = UIColor.clear
            viewSad.layer.borderWidth = 0
            
            viewDepressed.backgroundColor = UIColor.clear
            viewDepressed.layer.borderWidth = 0
            selectedFeelings = "Stressed"
            
            isfeeling1Selected = false
            isfeeling2Selected = false
            isfeeling3Selected = false
            isfeeling4Selected = true
            isfeeling5Selected = false
            isfeeling6Selected = false
            isfeeling7Selected = false
            isfeeling8Selected = false
            
            
        }
    }
    
    
    @IBAction func btnBoredClicked(_ sender: Any) {
        
        
        if isfeeling5Selected == true {
            
        
        self.viewBored.layer.cornerRadius = 0
        
        self.viewBored.backgroundColor = UIColor.clear
        
        self.viewBored.layer.borderWidth = 0
        
        
        
        viewAngry.backgroundColor = UIColor.clear
        viewAngry.layer.borderWidth = 0
        
        viewAnnoyed.backgroundColor = UIColor.clear
        viewAnnoyed.layer.borderWidth = 0
        
        viewWorried.backgroundColor = UIColor.clear
        viewWorried.layer.borderWidth = 0
        
        viewStressed.backgroundColor = UIColor.clear
        viewStressed.layer.borderWidth = 0
        
        viewLonely.backgroundColor = UIColor.clear
        viewLonely.layer.borderWidth = 0
        
        viewSad.backgroundColor = UIColor.clear
        viewSad.layer.borderWidth = 0
        
        viewDepressed.backgroundColor = UIColor.clear
        viewDepressed.layer.borderWidth = 0
        selectedFeelings = "-"
            
            isfeeling5Selected = false
            
        }else {
            
            self.viewBored.layer.cornerRadius = 20
            
            self.viewBored.backgroundColor = darkBlue
            self.viewBored.layer.borderColor = UIColor.white.withAlphaComponent(1).cgColor
            self.viewBored.layer.borderWidth = 2
            self.viewBored.clipsToBounds = true
            
            
            viewAngry.backgroundColor = UIColor.clear
            viewAngry.layer.borderWidth = 0
            
            viewAnnoyed.backgroundColor = UIColor.clear
            viewAnnoyed.layer.borderWidth = 0
            
            viewWorried.backgroundColor = UIColor.clear
            viewWorried.layer.borderWidth = 0
            
            viewStressed.backgroundColor = UIColor.clear
            viewStressed.layer.borderWidth = 0
            
            viewLonely.backgroundColor = UIColor.clear
            viewLonely.layer.borderWidth = 0
            
            viewSad.backgroundColor = UIColor.clear
            viewSad.layer.borderWidth = 0
            
            viewDepressed.backgroundColor = UIColor.clear
            viewDepressed.layer.borderWidth = 0
            selectedFeelings = "Bored"
            
            isfeeling1Selected = false
            isfeeling2Selected = false
            isfeeling3Selected = false
            isfeeling4Selected = false
            isfeeling5Selected = true
            isfeeling6Selected = false
            isfeeling7Selected = false
            isfeeling8Selected = false
        }
    }
    
    @IBAction func btnLonelyClicked(_ sender: Any) {
        
        if isfeeling6Selected == true {
        
        self.viewLonely.layer.cornerRadius = 0
        
        self.viewLonely.backgroundColor = UIColor.clear
        
        self.viewLonely.layer.borderWidth = 0
       
        
        
        viewAngry.backgroundColor = UIColor.clear
        viewAngry.layer.borderWidth = 0
        
        viewAnnoyed.backgroundColor = UIColor.clear
        viewAnnoyed.layer.borderWidth = 0
        
        viewWorried.backgroundColor = UIColor.clear
        viewWorried.layer.borderWidth = 0
        
        viewStressed.backgroundColor = UIColor.clear
        viewStressed.layer.borderWidth = 0
        
        viewBored.backgroundColor = UIColor.clear
        viewBored.layer.borderWidth = 0
        
        viewSad.backgroundColor = UIColor.clear
        viewSad.layer.borderWidth = 0
        
        viewDepressed.backgroundColor = UIColor.clear
        viewDepressed.layer.borderWidth = 0
        
        selectedFeelings = "-"
            
         isfeeling6Selected = false
        } else {
            
            self.viewLonely.layer.cornerRadius = 20
            
            self.viewLonely.backgroundColor = darkBlue
            self.viewLonely.layer.borderColor = UIColor.white.withAlphaComponent(1).cgColor
            self.viewLonely.layer.borderWidth = 2
            self.viewLonely.clipsToBounds = true
            
            
            viewAngry.backgroundColor = UIColor.clear
            viewAngry.layer.borderWidth = 0
            
            viewAnnoyed.backgroundColor = UIColor.clear
            viewAnnoyed.layer.borderWidth = 0
            
            viewWorried.backgroundColor = UIColor.clear
            viewWorried.layer.borderWidth = 0
            
            viewStressed.backgroundColor = UIColor.clear
            viewStressed.layer.borderWidth = 0
            
            viewBored.backgroundColor = UIColor.clear
            viewBored.layer.borderWidth = 0
            
            viewSad.backgroundColor = UIColor.clear
            viewSad.layer.borderWidth = 0
            
            viewDepressed.backgroundColor = UIColor.clear
            viewDepressed.layer.borderWidth = 0
            
            selectedFeelings = "Lonely"
            
            isfeeling1Selected = false
            isfeeling2Selected = false
            isfeeling3Selected = false
            isfeeling4Selected = false
            isfeeling5Selected = false
            isfeeling6Selected = true
            isfeeling7Selected = false
            isfeeling8Selected = false
            
            
        }
    }
    
    @IBAction func btnSadClicked(_ sender: Any) {
        
        if isfeeling7Selected == true {
        
        self.viewSad.layer.cornerRadius = 0
        
        self.viewSad.backgroundColor = UIColor.clear
       
        self.viewSad.layer.borderWidth = 0
        
        
        
        viewAngry.backgroundColor = UIColor.clear
        viewAngry.layer.borderWidth = 0
        
        viewAnnoyed.backgroundColor = UIColor.clear
        viewAnnoyed.layer.borderWidth = 0
        
        viewWorried.backgroundColor = UIColor.clear
        viewWorried.layer.borderWidth = 0
        
        viewStressed.backgroundColor = UIColor.clear
        viewStressed.layer.borderWidth = 0
        
        viewBored.backgroundColor = UIColor.clear
        viewBored.layer.borderWidth = 0
        
        viewLonely.backgroundColor = UIColor.clear
        viewLonely.layer.borderWidth = 0
        
        viewDepressed.backgroundColor = UIColor.clear
        viewDepressed.layer.borderWidth = 0
        selectedFeelings = "-"
            
            isfeeling7Selected = false
        } else {
            
            self.viewSad.layer.cornerRadius = 20
            
            self.viewSad.backgroundColor = darkBlue
            self.viewSad.layer.borderColor = UIColor.white.withAlphaComponent(1).cgColor
            self.viewSad.layer.borderWidth = 2
            self.viewSad.clipsToBounds = true
            
            
            viewAngry.backgroundColor = UIColor.clear
            viewAngry.layer.borderWidth = 0
            
            viewAnnoyed.backgroundColor = UIColor.clear
            viewAnnoyed.layer.borderWidth = 0
            
            viewWorried.backgroundColor = UIColor.clear
            viewWorried.layer.borderWidth = 0
            
            viewStressed.backgroundColor = UIColor.clear
            viewStressed.layer.borderWidth = 0
            
            viewBored.backgroundColor = UIColor.clear
            viewBored.layer.borderWidth = 0
            
            viewLonely.backgroundColor = UIColor.clear
            viewLonely.layer.borderWidth = 0
            
            viewDepressed.backgroundColor = UIColor.clear
            viewDepressed.layer.borderWidth = 0
            selectedFeelings = "Sad"
            
            isfeeling1Selected = false
            isfeeling2Selected = false
            isfeeling3Selected = false
            isfeeling4Selected = false
            isfeeling5Selected = false
            isfeeling6Selected = false
            isfeeling7Selected = true
            isfeeling8Selected = false
            
        }
    }
    
    @IBAction func btnDepressedClicked(_ sender: Any) {
        
        if isfeeling8Selected == true {
        
        self.viewDepressed.layer.cornerRadius = 0
        
        self.viewDepressed.backgroundColor = UIColor.clear
        
        self.viewDepressed.layer.borderWidth = 0
        
        
        viewAngry.backgroundColor = UIColor.clear
        viewAngry.layer.borderWidth = 0
        
        viewAnnoyed.backgroundColor = UIColor.clear
        viewAnnoyed.layer.borderWidth = 0
        
        viewWorried.backgroundColor = UIColor.clear
        viewWorried.layer.borderWidth = 0
        
        viewStressed.backgroundColor = UIColor.clear
        viewStressed.layer.borderWidth = 0
        
        viewBored.backgroundColor = UIColor.clear
        viewBored.layer.borderWidth = 0
        
        viewLonely.backgroundColor = UIColor.clear
        viewLonely.layer.borderWidth = 0
        
        viewSad.backgroundColor = UIColor.clear
        viewSad.layer.borderWidth = 0
        selectedFeelings = "-"
            
            isfeeling8Selected = false
        } else {
            
            self.viewDepressed.layer.cornerRadius = 20
            
            self.viewDepressed.backgroundColor = darkBlue
            self.viewDepressed.layer.borderColor = UIColor.white.withAlphaComponent(1).cgColor
            self.viewDepressed.layer.borderWidth = 2
            self.viewDepressed.clipsToBounds = true
            
            
            viewAngry.backgroundColor = UIColor.clear
            viewAngry.layer.borderWidth = 0
            
            viewAnnoyed.backgroundColor = UIColor.clear
            viewAnnoyed.layer.borderWidth = 0
            
            viewWorried.backgroundColor = UIColor.clear
            viewWorried.layer.borderWidth = 0
            
            viewStressed.backgroundColor = UIColor.clear
            viewStressed.layer.borderWidth = 0
            
            viewBored.backgroundColor = UIColor.clear
            viewBored.layer.borderWidth = 0
            
            viewLonely.backgroundColor = UIColor.clear
            viewLonely.layer.borderWidth = 0
            
            viewSad.backgroundColor = UIColor.clear
            viewSad.layer.borderWidth = 0
            selectedFeelings = "Depressed"
            
            isfeeling1Selected = false
            isfeeling2Selected = false
            isfeeling3Selected = false
            isfeeling4Selected = false
            isfeeling5Selected = false
            isfeeling6Selected = false
            isfeeling7Selected = false
            isfeeling8Selected = true
            
        }
    }
    
    @IBAction func txtOtherFeelingsDidBegin(_ sender: UITextField) {
        
        viewAngry.backgroundColor = UIColor.clear
        viewAngry.layer.borderWidth = 0
        
        viewAnnoyed.backgroundColor = UIColor.clear
        viewAnnoyed.layer.borderWidth = 0
        
        viewWorried.backgroundColor = UIColor.clear
        viewWorried.layer.borderWidth = 0
        
        viewStressed.backgroundColor = UIColor.clear
        viewStressed.layer.borderWidth = 0
        
        viewBored.backgroundColor = UIColor.clear
        viewBored.layer.borderWidth = 0
        
        viewLonely.backgroundColor = UIColor.clear
        viewLonely.layer.borderWidth = 0
        
        viewSad.backgroundColor = UIColor.clear
        viewSad.layer.borderWidth = 0
        
        viewDepressed.backgroundColor = UIColor.clear
        viewDepressed.layer.borderWidth = 0
    }
    
    @IBAction func txtOtherFeelings(_ sender: UITextField) {
        
       
        
        selectedFeelings = sender.text!
    }
    
    //Effects on me button functions
    @IBAction func btnPhysicalBodyClicked(_ sender: UIButton) {
        
        
        if isPhysicalBodySelected == true {
            
            isPhysicalBodySelected = false
            
            btnPhysicalBody.backgroundColor = UIColor.white
            btnPhysicalBody.setTitleColor(UIColor.darkGray, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            valueToRemoveOnEffectsOnMe.append(btnTitle!)
        }
        else{
            isPhysicalBodySelected = true
            
            
            btnPhysicalBody.backgroundColor = darkBlue
            btnPhysicalBody.setTitleColor(UIColor.white, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            selectedEffectsOnMeValues.append(btnTitle!)
        }
        
        selectedEffectsOnMeValues = selectedEffectsOnMeValues.filter{ !valueToRemoveOnEffectsOnMe.contains($0) }
        
        selectedEffectsOnMeValues = Array(Set(selectedEffectsOnMeValues).subtracting(valueToRemoveOnEffectsOnMe))
        
        print("Selected Effects on Me:\(selectedEffectsOnMeValues)", " Removed values from Array\(valueToRemoveOnEffectsOnMe)")
    }
    
    @IBAction func btnMentalStateClicked(_ sender: UIButton) {
        
        if isMentalStateSelected == true {
            
            isMentalStateSelected = false
            
            btnMentalState.backgroundColor = UIColor.white
            btnMentalState.setTitleColor(UIColor.darkGray, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            valueToRemoveOnEffectsOnMe.append(btnTitle!)
        }
        else{
            isMentalStateSelected = true
            
            
            btnMentalState.backgroundColor = darkBlue
            btnMentalState.setTitleColor(UIColor.white, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            selectedEffectsOnMeValues.append(btnTitle!)
        }
        
        selectedEffectsOnMeValues = selectedEffectsOnMeValues.filter{ !valueToRemoveOnEffectsOnMe.contains($0) }
        
        selectedEffectsOnMeValues = Array(Set(selectedEffectsOnMeValues).subtracting(valueToRemoveOnEffectsOnMe))
        
        print("Selected Effects on Me:\(selectedEffectsOnMeValues)", " Removed values from Array\(valueToRemoveOnEffectsOnMe)")
    }
    
    @IBAction func btnSocialStatus(_ sender: UIButton) {
        if isSocialStatusSelected == true {
            
            isSocialStatusSelected = false
            
            btnSocialStatus.backgroundColor = UIColor.white
            btnSocialStatus.setTitleColor(UIColor.darkGray, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            valueToRemoveOnEffectsOnMe.append(btnTitle!)
        }
        else{
            isSocialStatusSelected = true
            
            
            btnSocialStatus.backgroundColor = darkBlue
            btnSocialStatus.setTitleColor(UIColor.white, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            selectedEffectsOnMeValues.append(btnTitle!)
        }
        
        selectedEffectsOnMeValues = selectedEffectsOnMeValues.filter{ !valueToRemoveOnEffectsOnMe.contains($0) }
        
        selectedEffectsOnMeValues = Array(Set(selectedEffectsOnMeValues).subtracting(valueToRemoveOnEffectsOnMe))
        
        print("Selected Effects on Me:\(selectedEffectsOnMeValues)", " Removed values from Array\(valueToRemoveOnEffectsOnMe)")
    }
    
    @IBAction func btnFinanceClicked(_ sender: UIButton) {
        if isFinanceSelected == true {
            
            isFinanceSelected = false
            
            btnFinance.backgroundColor = UIColor.white
            btnFinance.setTitleColor(UIColor.darkGray, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            valueToRemoveOnEffectsOnMe.append(btnTitle!)
        }
        else{
            isFinanceSelected = true
            
            
            btnFinance.backgroundColor = darkBlue
            btnFinance.setTitleColor(UIColor.white, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            selectedEffectsOnMeValues.append(btnTitle!)
        }
        
        selectedEffectsOnMeValues = selectedEffectsOnMeValues.filter{ !valueToRemoveOnEffectsOnMe.contains($0) }
        
        selectedEffectsOnMeValues = Array(Set(selectedEffectsOnMeValues).subtracting(valueToRemoveOnEffectsOnMe))
        
        print("Selected Effects on Me:\(selectedEffectsOnMeValues)", " Removed values from Array\(valueToRemoveOnEffectsOnMe)")
    }
    
   
    @IBAction func btnPropertyClicked(_ sender: UIButton) {
        if isPropertySelected == true {
            
            isPropertySelected = false
            
            btnProperty.backgroundColor = UIColor.white
            btnProperty.setTitleColor(UIColor.darkGray, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            valueToRemoveOnEffectsOnMe.append(btnTitle!)
        }
        else{
            isPropertySelected = true
            
            
            btnProperty.backgroundColor = darkBlue
            btnProperty.setTitleColor(UIColor.white, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            selectedEffectsOnMeValues.append(btnTitle!)
        }
        
        selectedEffectsOnMeValues = selectedEffectsOnMeValues.filter{ !valueToRemoveOnEffectsOnMe.contains($0) }
        
        selectedEffectsOnMeValues = Array(Set(selectedEffectsOnMeValues).subtracting(valueToRemoveOnEffectsOnMe))
        
        print("Selected Effects on Me:\(selectedEffectsOnMeValues)", " Removed values from Array\(valueToRemoveOnEffectsOnMe)")
    }
    
    @IBAction func btnMindsetClicked(_ sender: UIButton) {
        
        if isMindsetSelected == true {
            
            isMindsetSelected = false
            
            btnMindset.backgroundColor = UIColor.white
            btnMindset.setTitleColor(UIColor.darkGray, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            valueToRemoveOnEffectsOnMe.append(btnTitle!)
        }
        else{
            isMindsetSelected = true
            
            
            btnMindset.backgroundColor = darkBlue
            btnMindset.setTitleColor(UIColor.white, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            selectedEffectsOnMeValues.append(btnTitle!)
        }
        
        selectedEffectsOnMeValues = selectedEffectsOnMeValues.filter{ !valueToRemoveOnEffectsOnMe.contains($0) }
        
        selectedEffectsOnMeValues = Array(Set(selectedEffectsOnMeValues).subtracting(valueToRemoveOnEffectsOnMe))
        
        print("Selected Effects on Me:\(selectedEffectsOnMeValues)", " Removed values from Array\(valueToRemoveOnEffectsOnMe)")
    }
    
    @IBAction func btnRelationshipClicked(_ sender: UIButton) {
        
        if isRelationshipSelected == true {
            
            isRelationshipSelected = false
            
            btnRelationship.backgroundColor = UIColor.white
            btnRelationship.setTitleColor(UIColor.darkGray, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            valueToRemoveOnEffectsOnMe.append(btnTitle!)
        }
        else{
            isRelationshipSelected = true
            
            
            btnRelationship.backgroundColor = darkBlue
            btnRelationship.setTitleColor(UIColor.white, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            selectedEffectsOnMeValues.append(btnTitle!)
        }
        
        selectedEffectsOnMeValues = selectedEffectsOnMeValues.filter{ !valueToRemoveOnEffectsOnMe.contains($0) }
        
        selectedEffectsOnMeValues = Array(Set(selectedEffectsOnMeValues).subtracting(valueToRemoveOnEffectsOnMe))
        
        print("Selected Effects on Me:\(selectedEffectsOnMeValues)", " Removed values from Array\(valueToRemoveOnEffectsOnMe)")
    }
    
    
    @IBAction func btnWayOfLifeClicked(_ sender: UIButton) {
        
        if isWayOfLifSelected == true {
            
            isWayOfLifSelected = false
            
            btnWayOfLife.backgroundColor = UIColor.white
            btnWayOfLife.setTitleColor(UIColor.darkGray, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            valueToRemoveOnEffectsOnMe.append(btnTitle!)
        }
        else{
            isWayOfLifSelected = true
            
            
            btnWayOfLife.backgroundColor = darkBlue
            btnWayOfLife.setTitleColor(UIColor.white, for: .normal)
            
            let btnTitle = sender.title(for: .normal)
            
            selectedEffectsOnMeValues.append(btnTitle!)
        }
        
        selectedEffectsOnMeValues = selectedEffectsOnMeValues.filter{ !valueToRemoveOnEffectsOnMe.contains($0) }
        
        selectedEffectsOnMeValues = Array(Set(selectedEffectsOnMeValues).subtracting(valueToRemoveOnEffectsOnMe))
        
        print("Selected Effects on Me:\(selectedEffectsOnMeValues)", " Removed values from Array\(valueToRemoveOnEffectsOnMe)")
        
    }
    
    //Roots of my status functions
    
    @IBAction func btnWants3Clicked(_ sender: UIButton) {
        
        if isW3Selected == true {
        
        viewWants.backgroundColor = UIColor.lightGray
        imgWants1.image = UIImage(named: "w3_normal")
        lblW1Text.textColor = UIColor.darkGray
        
        viewWants2.backgroundColor = UIColor.lightGray
        imgWants2.image = UIImage(named: "w4_normal")
        lblW2Text.textColor = UIColor.darkGray
        
        viewLikes1.backgroundColor = UIColor.lightGray
        imgLikes1.image = UIImage(named: "l3_normal")
        lblL1Text.textColor = UIColor.darkGray
        
        viewLikes2.backgroundColor = UIColor.lightGray
        imgLikes2.image = UIImage(named: "l4_normal")
        lblL2Text.textColor = UIColor.darkGray
        
        viewAcceptance1.backgroundColor = UIColor.lightGray
        imgAcceptance1.image = UIImage(named: "a3_normal")
        lblA1Text.textColor = UIColor.darkGray
        
        viewAcceptance2.backgroundColor = UIColor.lightGray
        imgAcceptance2.image = UIImage(named: "a4_normal")
        lblA2Text.textColor = UIColor.darkGray
        
        selectedRootCause = "-"
            
            isW3Selected = false
            
        } else {
            viewWants.backgroundColor = darkBlue
            imgWants1.image = UIImage(named: "w3_pressed")
            lblW1Text.textColor = UIColor.white
            
            viewWants2.backgroundColor = UIColor.lightGray
            imgWants2.image = UIImage(named: "w4_normal")
            lblW2Text.textColor = UIColor.darkGray
            
            viewLikes1.backgroundColor = UIColor.lightGray
            imgLikes1.image = UIImage(named: "l3_normal")
            lblL1Text.textColor = UIColor.darkGray
            
            viewLikes2.backgroundColor = UIColor.lightGray
            imgLikes2.image = UIImage(named: "l4_normal")
            lblL2Text.textColor = UIColor.darkGray
            
            viewAcceptance1.backgroundColor = UIColor.lightGray
            imgAcceptance1.image = UIImage(named: "a3_normal")
            lblA1Text.textColor = UIColor.darkGray
            
            viewAcceptance2.backgroundColor = UIColor.lightGray
            imgAcceptance2.image = UIImage(named: "a4_normal")
            lblA2Text.textColor = UIColor.darkGray
            
            selectedRootCause = self.lblW1Text.text!
            
            isW3Selected = true
            isW4Selected = false
            isL3Selected = false
            isL4Selected = false
            isA3Selected = false
            isA4Selected = false
            
        }
    }
    
    @IBAction func btnWants4Clicked(_ sender: UIButton) {
        
        if isW4Selected == true {
        
        viewWants.backgroundColor = UIColor.lightGray
        imgWants1.image = UIImage(named: "w3_normal")
        lblW1Text.textColor = UIColor.darkGray
        
        viewWants2.backgroundColor = UIColor.lightGray
        imgWants2.image = UIImage(named: "w4_normal")
        lblW2Text.textColor = UIColor.darkGray
        
        viewLikes1.backgroundColor = UIColor.lightGray
        imgLikes1.image = UIImage(named: "l3_normal")
        lblL1Text.textColor = UIColor.darkGray
        
        viewLikes2.backgroundColor = UIColor.lightGray
        imgLikes2.image = UIImage(named: "l4_normal")
        lblL2Text.textColor = UIColor.darkGray
        
        viewAcceptance1.backgroundColor = UIColor.lightGray
        imgAcceptance1.image = UIImage(named: "a3_normal")
        lblA1Text.textColor = UIColor.darkGray
        
        viewAcceptance2.backgroundColor = UIColor.lightGray
        imgAcceptance2.image = UIImage(named: "a4_normal")
        lblA2Text.textColor = UIColor.darkGray
        
        selectedRootCause = "-"
            
            isW4Selected = false
            
        }else {
            
            viewWants.backgroundColor = UIColor.lightGray
            imgWants1.image = UIImage(named: "w3_normal")
            lblW1Text.textColor = UIColor.darkGray
            
            viewWants2.backgroundColor = darkBlue
            imgWants2.image = UIImage(named: "w4_pressed")
            lblW2Text.textColor = UIColor.white
            
            viewLikes1.backgroundColor = UIColor.lightGray
            imgLikes1.image = UIImage(named: "l3_normal")
            lblL1Text.textColor = UIColor.darkGray
            
            viewLikes2.backgroundColor = UIColor.lightGray
            imgLikes2.image = UIImage(named: "l4_normal")
            lblL2Text.textColor = UIColor.darkGray
            
            viewAcceptance1.backgroundColor = UIColor.lightGray
            imgAcceptance1.image = UIImage(named: "a3_normal")
            lblA1Text.textColor = UIColor.darkGray
            
            viewAcceptance2.backgroundColor = UIColor.lightGray
            imgAcceptance2.image = UIImage(named: "a4_normal")
            lblA2Text.textColor = UIColor.darkGray
            
            selectedRootCause = self.lblW2Text.text!
            
            isW3Selected = false
            isW4Selected = true
            isL3Selected = false
            isL4Selected = false
            isA3Selected = false
            isA4Selected = false
            
        }
        
    }
    
    @IBAction func btnLikes3(_ sender: UIButton) {
        
        if isL3Selected == true {
        
        viewWants.backgroundColor = UIColor.lightGray
        imgWants1.image = UIImage(named: "w3_normal")
        lblW1Text.textColor = UIColor.darkGray
        
        viewWants2.backgroundColor = UIColor.lightGray
        imgWants2.image = UIImage(named: "w4_normal")
        lblW2Text.textColor = UIColor.darkGray
        
        viewLikes1.backgroundColor = UIColor.lightGray
        imgLikes1.image = UIImage(named: "l3_normal")
        lblL1Text.textColor = UIColor.darkGray
        
        viewLikes2.backgroundColor = UIColor.lightGray
        imgLikes2.image = UIImage(named: "l4_normal")
        lblL2Text.textColor = UIColor.darkGray
        
        viewAcceptance1.backgroundColor = UIColor.lightGray
        imgAcceptance1.image = UIImage(named: "a3_normal")
        lblA1Text.textColor = UIColor.darkGray
        
        viewAcceptance2.backgroundColor = UIColor.lightGray
        imgAcceptance2.image = UIImage(named: "a4_normal")
        lblA2Text.textColor = UIColor.darkGray
        
        selectedRootCause = "-"
            
            isL3Selected = false
            
        }else {
            
            viewWants.backgroundColor = UIColor.lightGray
            imgWants1.image = UIImage(named: "w3_normal")
            lblW1Text.textColor = UIColor.darkGray
            
            viewWants2.backgroundColor = UIColor.lightGray
            imgWants2.image = UIImage(named: "w4_normal")
            lblW2Text.textColor = UIColor.darkGray
            
            viewLikes1.backgroundColor = darkBlue
            imgLikes1.image = UIImage(named: "l3_pressed")
            lblL1Text.textColor = UIColor.white
            
            viewLikes2.backgroundColor = UIColor.lightGray
            imgLikes2.image = UIImage(named: "l4_normal")
            lblL2Text.textColor = UIColor.darkGray
            
            viewAcceptance1.backgroundColor = UIColor.lightGray
            imgAcceptance1.image = UIImage(named: "a3_normal")
            lblA1Text.textColor = UIColor.darkGray
            
            viewAcceptance2.backgroundColor = UIColor.lightGray
            imgAcceptance2.image = UIImage(named: "a4_normal")
            lblA2Text.textColor = UIColor.darkGray
            
            selectedRootCause = self.lblL1Text.text!
            
            isW3Selected = false
            isW4Selected = false
            isL3Selected = true
            isL4Selected = false
            isA3Selected = false
            isA4Selected = false
        }
    }
    
    @IBAction func btnLikes4Clicked(_ sender: UIButton) {
        
        if isL4Selected == true {
        
        viewWants.backgroundColor = UIColor.lightGray
        imgWants1.image = UIImage(named: "w3_normal")
        lblW1Text.textColor = UIColor.darkGray
        
        viewWants2.backgroundColor = UIColor.lightGray
        imgWants2.image = UIImage(named: "w4_normal")
        lblW2Text.textColor = UIColor.darkGray
        
        viewLikes1.backgroundColor = UIColor.lightGray
        imgLikes1.image = UIImage(named: "l3_normal")
        lblL1Text.textColor = UIColor.darkGray
        
        viewLikes2.backgroundColor = UIColor.lightGray
        imgLikes2.image = UIImage(named: "l4_normal")
        lblL2Text.textColor = UIColor.darkGray
        
        viewAcceptance1.backgroundColor = UIColor.lightGray
        imgAcceptance1.image = UIImage(named: "a3_normal")
        lblA1Text.textColor = UIColor.darkGray
        
        viewAcceptance2.backgroundColor = UIColor.lightGray
        imgAcceptance2.image = UIImage(named: "a4_normal")
        lblA2Text.textColor = UIColor.darkGray
         
        selectedRootCause = "-"
            
            isL4Selected = false
            
        }else {
            viewWants.backgroundColor = UIColor.lightGray
            imgWants1.image = UIImage(named: "w3_normal")
            lblW1Text.textColor = UIColor.darkGray
            
            viewWants2.backgroundColor = UIColor.lightGray
            imgWants2.image = UIImage(named: "w4_normal")
            lblW2Text.textColor = UIColor.darkGray
            
            viewLikes1.backgroundColor = UIColor.lightGray
            imgLikes1.image = UIImage(named: "l3_normal")
            lblL1Text.textColor = UIColor.darkGray
            
            viewLikes2.backgroundColor = darkBlue
            imgLikes2.image = UIImage(named: "l4_pressed")
            lblL2Text.textColor = UIColor.white
            
            viewAcceptance1.backgroundColor = UIColor.lightGray
            imgAcceptance1.image = UIImage(named: "a3_normal")
            lblA1Text.textColor = UIColor.darkGray
            
            viewAcceptance2.backgroundColor = UIColor.lightGray
            imgAcceptance2.image = UIImage(named: "a4_normal")
            lblA2Text.textColor = UIColor.darkGray
            
            selectedRootCause = self.lblL2Text.text!
            
            isW3Selected = false
            isW4Selected = false
            isL3Selected = false
            isL4Selected = true
            isA3Selected = false
            isA4Selected = false
        }
        
       
    }
    
    
    @IBAction func btnAcceptance3Clicked(_ sender: UIButton) {
        
        if isA3Selected == true {
        
        viewWants.backgroundColor = UIColor.lightGray
        imgWants1.image = UIImage(named: "w3_normal")
        lblW1Text.textColor = UIColor.darkGray
        
        viewWants2.backgroundColor = UIColor.lightGray
        imgWants2.image = UIImage(named: "w4_normal")
        lblW2Text.textColor = UIColor.darkGray
        
        viewLikes1.backgroundColor = UIColor.lightGray
        imgLikes1.image = UIImage(named: "l3_normal")
        lblL1Text.textColor = UIColor.darkGray
        
        viewLikes2.backgroundColor = UIColor.lightGray
        imgLikes2.image = UIImage(named: "l4_normal")
        lblL2Text.textColor = UIColor.darkGray
        
        viewAcceptance1.backgroundColor = UIColor.lightGray
        imgAcceptance1.image = UIImage(named: "a3_normal")
        lblA1Text.textColor = UIColor.darkGray
        
        viewAcceptance2.backgroundColor = UIColor.lightGray
        imgAcceptance2.image = UIImage(named: "a4_normal")
        lblA2Text.textColor = UIColor.darkGray
        
        selectedRootCause = "-"
            
         isL4Selected = false
            
        }else {
            
            viewWants.backgroundColor = UIColor.lightGray
            imgWants1.image = UIImage(named: "w3_normal")
            lblW1Text.textColor = UIColor.darkGray
            
            viewWants2.backgroundColor = UIColor.lightGray
            imgWants2.image = UIImage(named: "w4_normal")
            lblW2Text.textColor = UIColor.darkGray
            
            viewLikes1.backgroundColor = UIColor.lightGray
            imgLikes1.image = UIImage(named: "l3_normal")
            lblL1Text.textColor = UIColor.darkGray
            
            viewLikes2.backgroundColor = UIColor.lightGray
            imgLikes2.image = UIImage(named: "l4_normal")
            lblL2Text.textColor = UIColor.darkGray
            
            viewAcceptance1.backgroundColor = darkBlue
            imgAcceptance1.image = UIImage(named: "a3_pressed")
            lblA1Text.textColor = UIColor.white
            
            viewAcceptance2.backgroundColor = UIColor.lightGray
            imgAcceptance2.image = UIImage(named: "a4_normal")
            lblA2Text.textColor = UIColor.darkGray
            
            selectedRootCause = self.lblA1Text.text!
            
            isW3Selected = false
            isW4Selected = false
            isL3Selected = false
            isL4Selected = false
            isA3Selected = true
            isA4Selected = false
            
        }
    }
    
    @IBAction func btnAcceptance4Clicked(_ sender: UIButton) {
        
        if isA4Selected == true {
        
        viewWants.backgroundColor = UIColor.lightGray
        imgWants1.image = UIImage(named: "w3_normal")
        lblW1Text.textColor = UIColor.darkGray
        
        viewWants2.backgroundColor = UIColor.lightGray
        imgWants2.image = UIImage(named: "w4_normal")
        lblW2Text.textColor = UIColor.darkGray
        
        viewLikes1.backgroundColor = UIColor.lightGray
        imgLikes1.image = UIImage(named: "l3_normal")
        lblL1Text.textColor = UIColor.darkGray
        
        viewLikes2.backgroundColor = UIColor.lightGray
        imgLikes2.image = UIImage(named: "l4_normal")
        lblL2Text.textColor = UIColor.darkGray
        
        viewAcceptance1.backgroundColor = UIColor.lightGray
        imgAcceptance1.image = UIImage(named: "a3_normal")
        lblA1Text.textColor = UIColor.darkGray
        
        viewAcceptance2.backgroundColor = UIColor.lightGray
        imgAcceptance2.image = UIImage(named: "a4_normal")
        lblA2Text.textColor = UIColor.darkGray
        
        selectedRootCause = "-"
            
            isA4Selected = false
        }else {
            
            viewWants.backgroundColor = UIColor.lightGray
            imgWants1.image = UIImage(named: "w3_normal")
            lblW1Text.textColor = UIColor.darkGray
            
            viewWants2.backgroundColor = UIColor.lightGray
            imgWants2.image = UIImage(named: "w4_normal")
            lblW2Text.textColor = UIColor.darkGray
            
            viewLikes1.backgroundColor = UIColor.lightGray
            imgLikes1.image = UIImage(named: "l3_normal")
            lblL1Text.textColor = UIColor.darkGray
            
            viewLikes2.backgroundColor = UIColor.lightGray
            imgLikes2.image = UIImage(named: "l4_normal")
            lblL2Text.textColor = UIColor.darkGray
            
            viewAcceptance1.backgroundColor = UIColor.lightGray
            imgAcceptance1.image = UIImage(named: "a3_normal")
            lblA1Text.textColor = UIColor.darkGray
            
            viewAcceptance2.backgroundColor = darkBlue
            imgAcceptance2.image = UIImage(named: "a4_pressed")
            lblA2Text.textColor = UIColor.white
            
            selectedRootCause = self.lblA2Text.text!
            
            isW3Selected = false
            isW4Selected = false
            isL3Selected = false
            isL4Selected = false
            isA3Selected = false
            isA4Selected = true
            
        }
    }
    
    
    @IBAction func btnEveryoneClicked(_ sender: Any) {
        
        if isEveryoneSelected == true {
            self.viewEveryone.backgroundColor = UIColor.lightGray
            
            self.viewNobody.backgroundColor = UIColor.lightGray
            
            self.lblEveryone.textColor = darkBlue
            self.lblEveryoneContent.textColor = darkBlue
            
            self.lblNobody.textColor = darkBlue
            self.lblNobodyContent.textColor = darkBlue
            
            isEveryoneSelected = false
            
        }else {
            
            self.viewEveryone.backgroundColor = darkBlue
            
            self.viewNobody.backgroundColor = UIColor.lightGray
            
            self.lblEveryone.textColor = UIColor.white
            self.lblEveryoneContent.textColor = UIColor.white
            
            self.lblNobody.textColor = darkBlue
            self.lblNobodyContent.textColor = darkBlue
            
            isEveryoneSelected = true
            isNobodySelected = false
        }
        
    }
    
    @IBAction func btnNobodyClicked(_ sender: Any) {
        
        if isNobodySelected == true {
            
            self.viewNobody.backgroundColor = UIColor.lightGray
            
            self.viewEveryone.backgroundColor = UIColor.lightGray
            
            self.lblNobody.textColor = darkBlue
            self.lblNobodyContent.textColor = darkBlue
            
            self.lblEveryone.textColor = darkBlue
            self.lblEveryoneContent.textColor = darkBlue
            
            isNobodySelected = false
            
        }else {
            
            self.viewNobody.backgroundColor = darkBlue
            
            self.viewEveryone.backgroundColor = UIColor.lightGray
            
            self.lblNobody.textColor = UIColor.white
            self.lblNobodyContent.textColor = UIColor.white
            
            self.lblEveryone.textColor = darkBlue
            self.lblEveryoneContent.textColor = darkBlue
            
            isNobodySelected = true
            isEveryoneSelected = false
            
        }
    }
    
    
   
    
    
    @IBAction func btnVeryLowTapped(_ sender: Any) {
        
        if isVeryLowSelected == true {
            
            self.btnVeryLow.backgroundColor = UIColor.white
            
            self.btnLow.backgroundColor = UIColor.white
            self.btnMedium.backgroundColor = UIColor.white
            self.btnHigh.backgroundColor = UIColor.white
            
            self.btnVeryHigh.backgroundColor = UIColor.white
            
            isVeryLowSelected = false
        }else{
            
            self.btnVeryLow.backgroundColor = darkBlue
            
            self.btnLow.backgroundColor = UIColor.white
            self.btnMedium.backgroundColor = UIColor.white
            self.btnHigh.backgroundColor = UIColor.white
            
            self.btnVeryHigh.backgroundColor = UIColor.white
            isVeryLowSelected = true
            isLowSelected = false
            isMediumSelected = false
            isHighSelected = false
            isVeryHighSelected = false
        }
        
    }
    
    @IBAction func btnLowTapped(_ sender: Any) {
        
        if isLowSelected == true {
            
            self.btnVeryLow.backgroundColor = UIColor.white
            
            self.btnLow.backgroundColor = UIColor.white
            self.btnMedium.backgroundColor = UIColor.white
            self.btnHigh.backgroundColor = UIColor.white
            
            self.btnVeryHigh.backgroundColor = UIColor.white
            
            isLowSelected = false
        }else{
            self.btnVeryLow.backgroundColor = UIColor.white
            
            self.btnLow.backgroundColor = darkBlue
            self.btnMedium.backgroundColor = UIColor.white
            self.btnHigh.backgroundColor = UIColor.white
            
            self.btnVeryHigh.backgroundColor = UIColor.white
            
            isVeryLowSelected = false
            isLowSelected = true
            isMediumSelected = false
            isHighSelected = false
            isVeryHighSelected = false
        }
    }
    
    @IBAction func btnMediumTapped(_ sender: Any) {
        
        if isMediumSelected == true {
            
            self.btnVeryLow.backgroundColor = UIColor.white
            
            self.btnLow.backgroundColor = UIColor.white
            self.btnMedium.backgroundColor = UIColor.white
            self.btnHigh.backgroundColor = UIColor.white
            
            self.btnVeryHigh.backgroundColor = UIColor.white
            
            isMediumSelected = false
        }else{
            self.btnVeryLow.backgroundColor = UIColor.white
            
            self.btnLow.backgroundColor = UIColor.white
            self.btnMedium.backgroundColor = darkBlue
            self.btnHigh.backgroundColor = UIColor.white
            
            self.btnVeryHigh.backgroundColor = UIColor.white
            
            isVeryLowSelected = false
            isLowSelected = false
            isMediumSelected = true
            isHighSelected = false
            isVeryHighSelected = false
            
        }
    }
    
    
    @IBAction func btnHighTapped(_ sender: Any) {
        
        if isHighSelected == true {
            
            self.btnVeryLow.backgroundColor = UIColor.white
            
            self.btnLow.backgroundColor = UIColor.white
            self.btnMedium.backgroundColor = UIColor.white
            self.btnHigh.backgroundColor = UIColor.white
            
            self.btnVeryHigh.backgroundColor = UIColor.white
            
            isHighSelected = false
        }else {
            self.btnVeryLow.backgroundColor = UIColor.white
            
            self.btnLow.backgroundColor = UIColor.white
            self.btnMedium.backgroundColor = UIColor.white
            self.btnHigh.backgroundColor = darkBlue
            
            self.btnVeryHigh.backgroundColor = UIColor.white
            
            isVeryLowSelected = false
            isLowSelected = false
            isMediumSelected = false
            isHighSelected = true
            isVeryHighSelected = false
            
        }
    }
    
    @IBAction func btnVeryHighTapped(_ sender: Any) {
        
        if isVeryHighSelected == true {
            self.btnVeryLow.backgroundColor = UIColor.white
            
            self.btnLow.backgroundColor = UIColor.white
            self.btnMedium.backgroundColor = UIColor.white
            self.btnHigh.backgroundColor = UIColor.white
            
            self.btnVeryHigh.backgroundColor = UIColor.white
            
            isVeryHighSelected = false
        }else{
            self.btnVeryLow.backgroundColor = UIColor.white
            
            self.btnLow.backgroundColor = UIColor.white
            self.btnMedium.backgroundColor = UIColor.white
            self.btnHigh.backgroundColor = UIColor.white
            
            self.btnVeryHigh.backgroundColor = darkBlue
            
            isVeryLowSelected = false
            isLowSelected = false
            isMediumSelected = false
            isHighSelected = false
            isVeryHighSelected = true
            
        }
        
    }
    
    func changeFeelingsPositive(){
        
        self.btnAngry.setImage(UIImage(named: "sympathized"), for: UIControlState.normal)
        
        self.lblFeeling1.text = "Sympathized"
        
        self.btnAnnoyed.setImage(UIImage(named: "pleased"), for: UIControlState.normal)
        
        self.lblFeeling2.text = "Pleased"
        
        self.btnWorried.setImage(UIImage(named: "calm"), for: UIControlState.normal)
        
        self.lblFeeling3.text = "Calm"
        
        self.btnStressed.setImage(UIImage(named: "relaxed"), for: UIControlState.normal)
        
        self.lblFeeling4.text = "Relaxed"
        
        self.btnBored.setImage(UIImage(named: "excited"), for: UIControlState.normal)
        
        self.lblFeeling5.text = "Excited"
        
        self.btnLonely.setImage(UIImage(named: "cheerful"), for: UIControlState.normal)
        
        self.lblFeeling6.text = "Cheerful"
        
        self.btnSad.setImage(UIImage(named: "happy"), for: UIControlState.normal)
        
        self.lblFeeling7.text = "Happy"
        
        self.btnDipressed.setImage(UIImage(named: "inspired"), for: UIControlState.normal)
        
        self.lblFeeling8.text = "Inspired"
        
        
        
    }
    
    func changeFeelingsNegative(){
        
        self.btnAngry.setImage(UIImage(named: "angry"), for: UIControlState.normal)
        
        self.lblFeeling1.text = "Angry"
        
        self.btnAnnoyed.setImage(UIImage(named: "annoyed"), for: UIControlState.normal)
        
        self.lblFeeling2.text = "Annoyed"
        
        self.btnWorried.setImage(UIImage(named: "worried"), for: UIControlState.normal)
        
        self.lblFeeling3.text = "Worried"
        
        self.btnStressed.setImage(UIImage(named: "stressed"), for: UIControlState.normal)
        
        self.lblFeeling4.text = "Stressed"
        
        self.btnBored.setImage(UIImage(named: "bored"), for: UIControlState.normal)
        
        self.lblFeeling5.text = "Bored"
        
        self.btnLonely.setImage(UIImage(named: "lonely"), for: UIControlState.normal)
        
        self.lblFeeling6.text = "Lonely"
        
        self.btnSad.setImage(UIImage(named: "sad"), for: UIControlState.normal)
        
        self.lblFeeling7.text = "Sad"
        
        self.btnDipressed.setImage(UIImage(named: "depressed"), for: UIControlState.normal)
        
        self.lblFeeling8.text = "Depressed"
        
    }
    
    
    
}
