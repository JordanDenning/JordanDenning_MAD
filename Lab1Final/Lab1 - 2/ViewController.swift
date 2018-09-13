//
//  ViewController.swift
//  Lab1 - 2
//
//  Created by Jordan Denning on 9/12/18.
//  Copyright © 2018 Jordan Denning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var place: UILabel!
    

    @IBAction func choosePlace(_ sender: UIButton) {
        if sender.tag == 1 {
            artImage.image = UIImage(named: "peru2")
            place.text = "Peru"
        }
        else if sender.tag == 2{
            artImage.image = UIImage(named: "paris2")
            place.text = "Paris"
        }
        else if sender.tag == 3{
            artImage.image = UIImage(named: "map")
            place.text = "The World"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

