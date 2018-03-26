//
//  ProfilePageViewController.swift
//  MindLook
//
//  Created by Arjay Niones on 13/3/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import UIKit
import CoreData

class ProfilePageViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate,NSFetchedResultsControllerDelegate  {
   
    let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    let userID : String = UserDefaults.standard.value(forKey: "userid") as! String
    
    
    
    let darkBlue =  UIColor(red:0.04, green:0.36, blue:0.59, alpha:1.0)
    
    var numItems = 0
    
    let arrayMonths = ["01","02","03","04","05","06","07","08","09","10","11","12"]
    
    let arrayDays = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
    
    let arrayYears = ["2020","2019","2018","2017","2016","2015","2014","2013","2012","2011","2010","2009","2008","2007","2006","2005","2004","2003","2002","2001","2000","1999","1998","1997","1996","1995","1994","1993","1992","1991","1990","1989","1988","1987","1986","1985","1984","1983","1982","1981","1980","1979","1978","1977","1976","1975","1974","1973","1972","1971","1970","1969","1968","1967","1966","1965","1964","1963","1962","1961","1960","1959","1958","1957","1956","1955","1954","1953","1952","1951","1950","1949","1948","1947","1946","1945","1944","1943","1942","1941","1940","1939","1938","1937","1936","1935","1934","1933","1932","1931","1930","1929","1928","1927","1926","1925","1924","1923","1922","1921","1920"]
    
    
    let arrayDegree = ["Select Degree","High School","College","Diploma/Certificate","Bachelors","Masters","Doctoral/Ph.D","Others"]
    
    var arrayCountries = ["Choose Country"]
    var arrayCountryCodes = ["Default"]
    
    var selectedPicker = ""
    var selectedDay = ""
    var selectedMonth = ""
    var selectedYear = ""
    var selectedDegree = ""
    var selectedCountry = ""
    var selectedGender = ""
   
    var isSendDone = false
    //var isInfoFilled = false
    var jsonProfile = Array<Any>()
    
    @IBOutlet weak var btnSend: UIButton!
    
    @IBOutlet weak var imgUser: UIImageView!
    
    @IBOutlet weak var btnEdit: UIButton!
    
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBOutlet weak var txtMiddleName: UITextField!
    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var btnMale: UIButton!
    
    @IBOutlet weak var btnFemale: UIButton!
    
    
    @IBOutlet weak var txtDay: UITextField!
    
    @IBOutlet weak var txtMonth: UITextField!
    
    @IBOutlet weak var txtYear: UITextField!
    
    
    @IBOutlet weak var txtDegree: UITextField!
    
    
    @IBOutlet weak var txtCountry: UITextField!
    
    @IBOutlet weak var scrollViewProfile: UIScrollView!
    
    @IBOutlet weak var pickerView: UIPickerView!
   
    
    @IBOutlet weak var txtSubject: UITextField!
    
    
    @IBOutlet weak var txtCityDistrict: UITextField!
    
    @IBOutlet weak var txtProvince: UITextField!
    
    
    @IBAction func dayTapped(_ sender: Any) {
        
        self.txtDay.resignFirstResponder()
        
        self.pickerView.isHidden = false
        self.selectedPicker = "day"
        self.numItems = arrayDays.count
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    @IBAction func monthTapped(_ sender: Any) {
        
        self.txtMonth.resignFirstResponder()
        self.pickerView.isHidden = false
        self.selectedPicker = "month"
        self.numItems = arrayMonths.count
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    
    @IBAction func yearTapped(_ sender: Any) {
        
        self.txtYear.resignFirstResponder()
        self.pickerView.isHidden = false
        self.selectedPicker = "year"
        self.numItems = arrayYears.count
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    
    @IBAction func degreeTapped(_ sender: Any) {
        
        self.txtDegree.resignFirstResponder()
        
        self.pickerView.isHidden = false
        self.selectedPicker = "degree"
        self.numItems = arrayDegree.count
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    
    
    @IBAction func countryTapped(_ sender: Any) {
        
        self.txtCountry.resignFirstResponder()
        
        self.pickerView.isHidden = false
        self.selectedPicker = "country"
        self.numItems = arrayCountries.count
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getCountries()
        
        self.getProfile()

        self.pickerView.isHidden = true
        self.imgUser.layer.cornerRadius = self.imgUser.frame.size.width / 2;
         self.imgUser.clipsToBounds = true;
        
        
        self.btnMale.layer.borderWidth = 0.5
        self.btnMale.layer.borderColor = UIColor.gray.cgColor
        
        self.btnFemale.layer.borderWidth = 0.5
        self.btnFemale.layer.borderColor = UIColor.gray.cgColor
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnMaleClicked(_ sender: Any) {
        
        self.btnMale.backgroundColor = darkBlue
        self.btnMale.setTitleColor(UIColor.white, for: .normal)
        
        self.btnFemale.backgroundColor = UIColor.white
        self.btnFemale.setTitleColor(darkBlue, for: .normal)
        
        self.selectedGender = "1"
    }
    
    func maleSelected(){
        
        self.btnMale.backgroundColor = darkBlue
        self.btnMale.setTitleColor(UIColor.white, for: .normal)
        
        self.btnFemale.backgroundColor = UIColor.white
        self.btnFemale.setTitleColor(darkBlue, for: .normal)
        
        self.selectedGender = "1"
    }
    
    @IBAction func btnFemaleClicked(_ sender: Any) {
        
        self.btnFemale.backgroundColor = darkBlue
        self.btnFemale.setTitleColor(UIColor.white, for: .normal)
        
        self.btnMale.backgroundColor = UIColor.white
        self.btnMale.setTitleColor(darkBlue, for: .normal)
        
        self.selectedGender = "2"
    }
    
    func femaleSelected(){
        
        self.btnFemale.backgroundColor = darkBlue
        self.btnFemale.setTitleColor(UIColor.white, for: .normal)
        
        self.btnMale.backgroundColor = UIColor.white
        self.btnMale.setTitleColor(darkBlue, for: .normal)
        
        self.selectedGender = "2"
        
    }
    
    
    @IBAction func btnCancelTapped(_ sender: Any) {
        
         _ = navigationController?.popViewController(animated: true)
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return numItems
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //if statement for 3 options
        
        if (selectedPicker == "day")
        {
            return arrayDays[row]
        }
        else if (selectedPicker == "month")
        {
            return arrayMonths[row]
        }
        else if (selectedPicker == "year")
        {
            return arrayYears[row]
        } else if (selectedPicker == "degree")
        {
            return arrayDegree[row]
        }
        else if (selectedPicker == "country")
        {
            return arrayCountries[row]
        }else{
            return ""
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //if statements for 3 options
        self.pickerView.isHidden = true
        
        if (selectedPicker == "day")
        {
            self.txtDay.text = arrayDays[row]
            
            selectedDay = arrayDays[row]
        }
        else if (selectedPicker == "month")
        {
            self.txtMonth.text = arrayMonths[row]
            
            selectedMonth = arrayMonths[row]
        }
        else if (selectedPicker == "year")
        {
            self.txtYear.text = arrayYears[row]
            
            selectedYear = arrayYears[row]
            
        }else if (selectedPicker == "degree")
        {
            self.txtDegree.text = arrayDegree[row]
            
            selectedDegree = "\(row)"
            
        }else if (selectedPicker == "country")
        {
            self.txtCountry.text = arrayCountries[row]
            
            selectedCountry = arrayCountryCodes[row]
            
        }
        else{
            
        }
        
        
    }
    
    
    func getCountries(){
    
        let myUrl = URL(string: "http://103.86.48.128/Countries/getCountries");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "GET"// Compose a query string
        
        
        
        //request.httpBody = postString.data(using: String.Encoding.utf8);
        
        let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            // You can print out response object
            print("response = \(response)")
            
            //Let's convert response sent from a server side script to a NSDictionary object:
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! [Any]
                
                print("This is the JSON Data: \(json)")
                
                OperationQueue.main.addOperation({
                    
                    if json.count != 0 {
                        
                        for country in json {
                        if let data = country as? [String:Any] {
                            
                            let countryInfo: Countries = NSEntityDescription.insertNewObject(forEntityName: "Countries", into: self.managedContext) as! Countries
                            
                            countryInfo.country_code = String(data["country_code"] as? String ?? "default")
                            countryInfo.country_name = String(data["country_name"] as? String ?? "default")
                           
                            self.arrayCountries.append(countryInfo.country_name!)
                            
                            self.arrayCountryCodes.append(countryInfo.country_code!)
                            
                           
                            
                            //print("JSON Data \n Country_Code : \(String(describing: countryInfo.country_code)) \n Country Name : \(String(describing: countryInfo.country_name)) ")
                        }
                      }
                    }
                    
                })
                
                
                
            } catch {
                print(error)
                
                
            }
        }
        task.resume()
        
        
    }
    
    
    @IBAction func btnSendTapped(_ sender: Any) {
        
        if isSendDone == false {
        let selectedDate = "\(selectedDay)-\(selectedMonth)-\(selectedYear)"
        
        let firstname = self.txtFirstName.text!
        let middlename = self.txtMiddleName.text!
        let lastname = self.txtLastName.text!
        let subject = self.txtSubject.text!
        let province = self.txtProvince.text!
        let city = self.txtCityDistrict.text!
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let convertedDate: String = dateFormatter.string(from: currentDate)
        
        let update = convertedDate
       
        
        let myUrl = URL(string: "http://103.86.48.128/Profile/newuserprofile?");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "userid=\(self.userID)&name_first=\(String(describing: firstname))&name_middle=\(String(describing: middlename))&name_last=\(String(describing: lastname))&sex=\(self.selectedGender)&birthday=\(selectedDate)&education_degree=\(selectedDegree)&education_subject=\(String(describing:subject))&country=\(selectedCountry)&state_province=\(String(describing: province))&city=\(String(describing: city))&update=\(update)&inactive=1";
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            // You can print out response object
            print("response = \(response)")
            
            //Let's convert response sent from a server side script to a NSDictionary object:
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! [Any]
                
                print("This is the JSON Data: \(json)")
                
                OperationQueue.main.addOperation({
                    
                    if json.count != 0 {
                        
                        
                        let alert = UIAlertController(title: "Success!!!", message: "Your information was submitted successfully.", preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler:   { action in
                            
                            // do something like...
                            //refresh code here
                            
                        }))
                        
                        self.present(alert, animated: true, completion: nil)
                                
                                
                                print("Success")
                            }
                    
                    self.btnSend.setTitle("Save", for: UIControlState.normal)
                    self.isSendDone = true
                })
                
                
                
            } catch {
                print(error)
                
                
            }
        }
        task.resume()
        
        }else{
            
            
            
            let selectedDate = "\(selectedDay)-\(selectedMonth)-\(selectedYear)"
            
            let firstname = self.txtFirstName.text!
            let middlename = self.txtMiddleName.text!
            let lastname = self.txtLastName.text!
            let subject = self.txtSubject.text!
            let province = self.txtProvince.text!
            let city = self.txtCityDistrict.text!
            
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            
            dateFormatter.dateFormat = "dd-MM-yyyy"
            let convertedDate: String = dateFormatter.string(from: currentDate)
            
            let update = convertedDate
            
            
            let myUrl = URL(string: "http://103.86.48.128/Profile/updateuserprofile?");
            
            var request = URLRequest(url:myUrl!)
            
            request.httpMethod = "POST"// Compose a query string
            
            let postString = "userid=\(self.userID)&name_first=\(String(describing: firstname))&name_middle=\(String(describing: middlename))&name_last=\(String(describing: lastname))&sex=\(self.selectedGender)&birthday=\(selectedDate)&education_degree=\(selectedDegree)&education_subject=\(String(describing:subject))&country=\(selectedCountry)&state_province=\(String(describing: province))&city=\(String(describing: city))&update=\(update)&inactive=1";
            
            request.httpBody = postString.data(using: String.Encoding.utf8);
            
            let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
                
                if error != nil
                {
                    print("error=\(error)")
                    return
                }
                
                // You can print out response object
                print("response = \(response)")
                
                //Let's convert response sent from a server side script to a NSDictionary object:
                do {
                    let json = try JSONSerialization.jsonObject(with: data!) as! [Any]
                    
                    print("This is the JSON Data: \(json)")
                    
                    OperationQueue.main.addOperation({
                        
                        if json.count != 0 {
                            
                            
                            let alert = UIAlertController(title: "Success!!!", message: "Your information has been updated successfully.", preferredStyle: UIAlertControllerStyle.alert)
                            alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler:   { action in
                                
                                // do something like...
                                //refresh code here
                                
                            }))
                            
                            self.present(alert, animated: true, completion: nil)
                            
                            
                            print("Success")
                        }
                        
                        self.btnSend.setTitle("Save", for: UIControlState.normal)
                        self.isSendDone = true
                        
                    })
                    
                    
                    
                } catch {
                    print(error)
                    
                    
                }
            }
            task.resume()
            
            
            
            
        }
        
    }
    
    
    func getProfile(){
        
        
        let myUrl = URL(string: "http://103.86.48.128/Profile/getuserprofile?");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "userid=\(self.userID)";
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            // You can print out response object
            print("response = \(response)")
            
            //Let's convert response sent from a server side script to a NSDictionary object:
            do {
                self.jsonProfile = try JSONSerialization.jsonObject(with: data!) as! [Any]
                
                print("This is the JSON Data: \(self.jsonProfile)")
                
                OperationQueue.main.addOperation({
                    
                    if self.jsonProfile.count != 0 {
                        
                        
                        
                        if let data = self.jsonProfile[0] as? [String:Any] {
                            
                            let profileInfo: Profile = NSEntityDescription.insertNewObject(forEntityName: "Profile", into: self.managedContext) as! Profile
                            
                            profileInfo.name_last = String(data["name_last"] as? String ?? "default")
                            profileInfo.name_middle = String(data["name_middle"] as? String ?? "default")
                            profileInfo.name_first = String(data["name_first"] as? String ?? "default")
                            profileInfo.sex = Int16(data["sex"] as? Int ?? 0)
                            
                            profileInfo.birthday = String(data["birthday"] as? String ?? "Default")
                            
                            profileInfo.education_degree = Int16(data["education_degree"] as? Int ?? 0)
                            profileInfo.education_subject = String(data["education_subject"] as? String ?? "default")
                            profileInfo.country = String(data["country"] as? String ?? "default")
                            
                            profileInfo.state_province = String(data["state_province"] as? String ?? "default")
                            profileInfo.city = String(data["city"] as? String ?? "Default")
                            
                            profileInfo.update = String(data["update"] as? String ?? "Default")
                            
                            profileInfo.inactive = Int16(data["inactive"] as? Int ?? 0)
                            
                            self.txtFirstName.text = profileInfo.name_last
                            self.txtMiddleName.text = profileInfo.name_middle
                            self.txtLastName.text = profileInfo.name_last
                            
                            if profileInfo.sex == 1 {
                                
                               self.maleSelected()
                            }else if profileInfo.sex == 2{
                                self.femaleSelected()
                            }else{
                                self.btnFemale.backgroundColor = UIColor.white
                                self.btnFemale.setTitleColor(self.darkBlue, for: .normal)
                                
                                self.btnMale.backgroundColor = UIColor.white
                                self.btnMale.setTitleColor(self.darkBlue, for: .normal)
                                
                                self.selectedGender = "2"
                            }
                            
                            let stringOFWords = profileInfo.birthday
                            print("\(profileInfo.birthday)")
                            let stringOfWordsArray = stringOFWords?.components(separatedBy: "-")
                           
                            print("Birthday:\n Day: \(String(describing: stringOfWordsArray?[0]))\n Month: \(String(describing: stringOfWordsArray?[1]))\n Year: \(String(describing: stringOfWordsArray?[1]))")
                            
                            self.txtDay.text = stringOfWordsArray?[0]
                            self.txtMonth.text = stringOfWordsArray?[1]
                            self.txtYear.text = stringOfWordsArray?[2]
                            
                            let indexDegree = IndexPath(row: Int(profileInfo.education_degree), section: 0)
                            print("Degree Number: \(profileInfo.education_degree)")
                            
                            self.txtDegree.text = "\(self.arrayDegree[indexDegree.row])"
                            self.txtSubject.text = profileInfo.education_subject
                            
                            
                            var countryCode = profileInfo.country
                            
                            if let index = self.arrayCountryCodes.index(of: countryCode!) {
                                self.txtCountry.text = self.arrayCountries[index]
                                var countryName = self.arrayCountries[index]
                                print("\(String(describing: countryName))")
                            }
                            
                            self.txtProvince.text = profileInfo.state_province
                            self.txtCityDistrict.text = profileInfo.city
                            
                            
                         
                        }
                    
                        
                        self.btnSend.setTitle("Save", for: UIControlState.normal)
                        self.isSendDone = true
                       
                    }else{
                        
                        self.btnSend.setTitle("Send", for: UIControlState.normal)
                        self.isSendDone = false
                    }
                    
                    
                    
                })
                
                
                
            } catch {
                print(error)
                
                
            }
        }
        task.resume()
    }
    
    
    
    
}
