//
//  ViewController.swift
//  Lab4_2
//
//  Created by Jordan Denning on 10/6/18.
//  Copyright © 2018 Jordan Denning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    
    var user = Animal()
    let filename = "animal.plist"
    override func viewDidLoad() {
        //url of data file
        let fileURL = dataFileURL(filename)
        //if the data file exists, use it
        if FileManager.default.fileExists(atPath: (fileURL?.path)!){
            let url = fileURL!
            do {
                //creates a data buffer with the contents of the
                let data = try Data(contentsOf: url)
                //create an instance of PropertyListDecoder
                let decoder = PropertyListDecoder()
                //decode the data using the structure of the Favorite
                user = try decoder.decode(Animal.self, from: data)
                //assign data to textfields
                animalLabel.text=user.animalType
                nameLabel.text=user.animalName
                ageLabel.text = user.animalAge
            } catch {
                print("no file")
            }
        }
        else {
            print("file does not exist")
        }
        //application instance
        let app = UIApplication.shared
        //subscribe to the UIApplicationWillResignActiveNotification
        NotificationCenter.default.addObserver(self, selector:
            #selector(self.applicationWillResignActive(_:)), name:
            Notification.Name.UIApplicationWillResignActive, object: app)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func dataFileURL(_ filename:String) -> URL? {
        let urls = FileManager.default.urls(for:.documentDirectory,
                                            in: .userDomainMask)
        var url : URL?
        url = urls.first?.appendingPathComponent(filename)
        //return the URL of the data file or nil if it does not exist
        return url
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func unwindSegue (_ segue:UIStoryboardSegue){
        animalLabel.text=user.animalType
        nameLabel.text=user.animalName
        ageLabel.text=user.animalAge
    }
    
    @objc func applicationWillResignActive(_ notification:
        Notification){
        //url of data file
        let fileURL = dataFileURL(filename)
        //create an instance of PropertyListEncoder
        let encoder = PropertyListEncoder()
        //set format type to xml
        encoder.outputFormat = .xml
        do {
            //encode the data using the structure of the Favorite
            let plistData = try encoder.encode(user)
            //write encoded data to the file
            try plistData.write(to: fileURL!)
        } catch {
            print("write error")
        }
    }

}

