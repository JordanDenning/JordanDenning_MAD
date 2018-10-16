//
//  SecondViewController.swift
//  Project1_2
//
//  Created by Jordan Denning on 10/8/18.
//  Copyright © 2018 Jordan Denning. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var mealLabel: String?
    var mealText: String?
    var mealTime: String?
    @IBOutlet weak var mealTitle: UILabel!
    @IBOutlet weak var mealDescription: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    override func viewDidLoad()
  
    {
        super.viewDidLoad()
        mealTitle.text = mealLabel
        mealDescription.text = mealText
        timeLabel.text = mealTime

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
