//
//  ViewController.swift
//  Lab3
//
//  Created by Jordan Denning on 9/28/18.
//  Copyright © 2018 Jordan Denning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let noLeap = [31,28,31,30,31,30,31,31,30,31,30,31]
    let leapArr = [31,29,31,30,31,30,31,31,30,31,30,31]
    @IBOutlet weak var month: UITextField!
    @IBOutlet weak var day: UITextField!
    @IBOutlet weak var leapYear: UITextField!
    @IBOutlet weak var daysTil: UILabel!
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        month.resignFirstResponder()
        day.resignFirstResponder()
        leapYear.resignFirstResponder()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func daysUntilHalloween(){
        var days: Int
        var months: Int
        //var leap = true;
        let halloween = 304;
        let halloleap = 305;
        var count = 0;
        var daysUntil = 0;
        
        if day.text!.isEmpty{
            days = 1;
        }
        else
        {
            days = Int(day.text!)!
        }
        if month.text!.isEmpty{
            months = 1;
        }
        else
        {
            months = Int(month.text!)!
        }

      /*  if (leapYear.text == "'y'")
        {
            leap = true;
        }
        else if (leapYear.text == "'n'")
        {
            leap = false;
        }
        else if leapYear.text!.isEmpty
        {
            leap = false;
        }*/
        
        if (months < 11)
        {
            if (leapYear.text == "y")
            {
                var i = 0;
                while (i < (months-1))
                {
                    count = count + leapArr[i];
                    i = i + 1;
                    
                }
                count = count + days;
                daysUntil = halloleap - count;

            }
            
            if (leapYear.text == "n")
            {
                var i = 0;
                while( i < (months-1))
                {
                    count = count + noLeap[i];
                    i = i + 1;
                
                }
                count = count + days;
                daysUntil = halloween - count;
            }
            
            //count = count + days;
            //daysUntil = halloween - count;
        }
            
            
        else if(months >= 11)
        {
           if (months == 11)
           {
            count = 31 + (31-days);
            }
            if (months == 12)
            {
                count = 31-days
            }
            daysUntil = halloween + count;
        }
        
        
        if(months > 12 || months < 1)
        {
           let alert = UIAlertController(title: "Warning", message: "Please enter a number between 1 and 12", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
        }

        daysTil.text = String(daysUntil) + " days!"
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        daysUntilHalloween()
    }
    
    override func viewDidLoad() {
        month.delegate = self;
        day.delegate = self;
        leapYear.delegate = self;
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

