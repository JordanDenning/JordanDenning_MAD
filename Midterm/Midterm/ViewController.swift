//
//  ViewController.swift
//  Midterm
//
//  Created by Jordan Denning on 10/18/18.
//  Copyright © 2018 Jordan Denning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var workoutType: UISegmentedControl!
    @IBOutlet weak var workoutImg: UIImageView!
    @IBOutlet weak var timeTextfield: UITextField!
    @IBOutlet weak var daySlider: UISlider!
    
    @IBOutlet weak var showWeekly: UISwitch!
    @IBOutlet weak var milesRan: UILabel!
    
    @IBOutlet weak var caloriesBurned: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func imagePicker(_ sender: UISegmentedControl) {
        if workoutType.selectedSegmentIndex == 0
        {
            workoutImg.image = UIImage(named: "run.png")
            if !timeTextfield.text!.isEmpty{
                calcWorkoutFcn()
            }
        }
        if workoutType.selectedSegmentIndex == 1
        {
            workoutImg.image = UIImage(named: "bike.png")
            if !timeTextfield.text!.isEmpty{
                calcWorkoutFcn()
            }
        }
        if workoutType.selectedSegmentIndex == 2
        {
            workoutImg.image = UIImage(named: "swim.png")
            if !timeTextfield.text!.isEmpty{
                calcWorkoutFcn()
            }
        }
    }
    
    @IBAction func weeklySwitch(_ sender: UISwitch) {
        calcWorkoutFcn()
    }
    
    
    func calcWorkoutFcn() {
        var time : Float
        var miles : Float
        var cals  : Float
        if timeTextfield.text!.isEmpty{
            time = 0.0
            miles = 0.0
            cals = 0.0
            let alert = UIAlertController(title: "Warning", message: "Please enter a number.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: {action in                     self.timeTextfield.text="30"
                self.calcWorkoutFcn()}))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
            
        }
        else{
        if(Int(timeTextfield.text!)! < 30){
            let alert = UIAlertController(title: "Warning", message: "You should workout more!", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: {action in                     self.timeTextfield.text="30"
                self.calcWorkoutFcn()}))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
        }
        if workoutType.selectedSegmentIndex == 0
        {
            time = Float(timeTextfield.text!)!
            miles = time/10
            cals = Float(time/60)*600
            if showWeekly.isOn{
                miles = miles * 5
                cals = cals * 5
                
            }
        milesRan.text = " \(miles) Miles"
        caloriesBurned.text = "\(cals) Calories Burned"
        }
        if workoutType.selectedSegmentIndex == 1
        {
            time = Float(timeTextfield.text!)!
            miles = time/4
            cals = Float(time/60)*510
            if showWeekly.isOn{
                miles = miles * 5
                cals = cals * 5
                
            }
            milesRan.text = " \(miles) Miles"
            caloriesBurned.text = "\(cals) Calories Burned"
        }
        if workoutType.selectedSegmentIndex == 2
        {
            time = Float(timeTextfield.text!)!
            miles = time/30
            cals = Float(time/60)*420
            if showWeekly.isOn{
                miles = miles * 5
                cals = cals * 5
                
            }
            milesRan.text = " \(miles) Miles"
            caloriesBurned.text = "\(cals) Calories Burned"
        }
        
        
        }
        
    }
    
    @IBAction func calcWorkout(_ sender: UIButton) {
        calcWorkoutFcn()

    }
    
    
    override func viewDidLoad() {
         timeTextfield.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

