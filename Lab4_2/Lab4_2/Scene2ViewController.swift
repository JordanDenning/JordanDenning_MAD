//
//  Scene2ViewController.swift
//  Lab4_2
//
//  Created by Jordan Denning on 10/6/18.
//  Copyright © 2018 Jordan Denning. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var userAnimal: UITextField!
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userAge: UITextField!
    override func viewDidLoad() {
        userAge.delegate = self
        userName.delegate = self
        userAnimal.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneAdd"{
            let scene1ViewController = segue.destination as! ViewController
            //check to see that text was entered in the textfields
            if userAnimal.text!.isEmpty == false{
                scene1ViewController.user.animalType=userAnimal.text
            }
            if userName.text!.isEmpty == false{
                scene1ViewController.user.animalName=userName.text
            }
            if userAge.text!.isEmpty == false{
                scene1ViewController.user.animalAge=userAge.text
            }
        }
    }
    
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        userAnimal.resignFirstResponder()
        userName.resignFirstResponder()
        userAge.resignFirstResponder()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
