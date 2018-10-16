//
//  ViewController.swift
//  Project1_2
//
//  Created by Jordan Denning on 10/7/18.
//  Copyright © 2018 Jordan Denning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    
    @IBOutlet weak var pickerLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var pickerControl: UISegmentedControl!
    @IBOutlet weak var veggieSwitch: UISwitch!
    @IBOutlet weak var veganSwitch: UISwitch!
    @IBOutlet weak var GFSwitch: UISwitch!
    @IBOutlet weak var testLabel: UILabel!
    let Meals = ["Meal","Breakfast","Lunch","Dinner","Snack"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Meals[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Meals.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerLabel.text = Meals[row]
    }
    
    @IBAction func onClickGo(_ sender: UIButton)
    {
        var fullText : String?
        var time : String?
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        if pickerLabel.text == "Meal"
        {
            let alert = UIAlertController(title: "Warning", message: "Please pick a meal.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
//            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
            
        }
        if pickerControl.selectedSegmentIndex == 0
        {
            
            if pickerLabel.text == "Breakfast"
            {
                if GFSwitch.isOn && veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Eat a big bowl of oatmeal for carbs that will break down fast but will provide you with long lasting energy.\n\n• Eating a bowl of fruit will provide natural glucose.\n\n• Have a tofu scramble for some protein.\n\n• Make sure to hydrate and drink a glass of milk replacement."
                }
                else if GFSwitch.isOn && veggieSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Eat a big bowl of oatmeal for carbs that will break down fast but will provide you with long lasting energy.\n\n• Eating a bowl of fruit will provide natural glucose.\n\n• Have a tofu scramble or eggs for some protein.\n\n• Make sure to hydrate and drink a glass of fat free or low fat milk."
                }
                else if GFSwitch.isOn && veganSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Eat a big bowl of oatmeal for carbs that will break down fast but will provide you with long lasting energy.\n\n• Eating a bowl of fruit will provide natural glucose.\n\n• Have a tofu scramble with veggies for some protein.\n\n• Make sure to hydrate and drink a glass of milk replacement."
                }
                else if veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Eat a big bowl of oatmeal for carbs that will break down fast but will provide you with long lasting energy.\n\n• Eating a bowl of fruit will provide natural glucose.\n\n• Have a tofu scramble for some protein.\n\n• Make sure to hydrate and drink a glass of milk replacement."
                }
                else if GFSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Eat a big bowl of oatmeal for carbs that will break down fast but will provide you with long lasting energy.\n\n• Eating a bowl of fruit will provide natural glucose.\n\n• Having eggs will provide protein for you muscles.\n\n• Make sure to hydrate with water and a glass of fat free or low fat milk."
                }
                else if veggieSwitch.isOn   //breakfast veggie am game
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Eat a big bowl of oatmeal for carbs that will break down fast but will provide you with long lasting energy.\n\n• Eating a bowl of fruit will provide natural glucose.\n\n• Have a tofu scramble or eggs for some protein.\n\n• Make sure to hydrate with water and drink a glass of fat free or low fat milk."
                }
                else if veganSwitch.isOn    // breakfast vegan am game
                {
                     time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Eat a big bowl of oatmeal for carbs that will break down fast but will provide you with long lasting energy.\n\n• Eating a bowl of fruit will provide natural glucose.\n\n• Have a tofu scramble for some protein.\n\n• Make sure to hydrate and drink a glass of milk replacement."
                }
                else    //breakfast no restritctions am game
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Eat a big bowl of oatmeal for carbs that will break down fast but will provide you with long lasting energy.\n\n• Eating a bowl of fruit will provide natural glucose.\n\n• Having eggs will provide protein for you muscles.\n\n• Make sure to hydrate with water and a glass of fat free or low fat milk."
                    
                }
                
            }
            else if pickerLabel.text == "Lunch"
            {
                if GFSwitch.isOn && veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "1 Hour After Game"
                    fullText = "\n• Have a big bowl of gluten free pasta with a vegetable sauce.\n\n• Have nuts to restore fats.\n\n• A quinoa and lentil salad will be filling and restore protein to help muscles recover.\n\n• Hydrate with water and a sports drink to resplenish electrolyte stores."
                }
                else if GFSwitch.isOn && veggieSwitch.isOn
                {
                    time = "1 Hour After Game"
                    fullText = "\n• Have a big bowl of gluten free pasta with veggie sauce and some parmesan cheese.\n\n•Have some nuts to restore fats.\n\nEat a salad with lots of veggies and light dressing to restore needed nutrients.\n\n•Hydrate with water and chocolate milk."
                }
                else if GFSwitch.isOn && veganSwitch.isOn
                {
                    time = "1 Hour After Game"
                    fullText = "\n• Have a big bowl of gluten free pasta with a vegetable sauce.\n\n• Have nuts to restore fats.\n\n• A quinoa and lentil salad will be filling and restore protein to help muscles recover.\n\n• Hydrate with water and a sports drink to replenish electrolyte stores."
                }
                else if veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "1 Hour After Game"
                    fullText = "\n• Have a big bowl of pasta with a vegetable sauce.\n\n• Have nuts to restore fats.\n\n• A quinoa and lentil salad will be filling and restore protein to help muscles recover.\n\n• Hydrate with water and a sports drink to resplenish electrolyte stores."
                }
                else if GFSwitch.isOn
                {
                    time = "1 Hour After Game"
                    fullText = "\n• Have a turkey, ham, or chicken sandwich with cheese on gluten free bread.\n\n• Have potato or gluten free pasta salad for some added carbs.\n\n• Have some peppers, carrots, or celery for extra nutrients.\n\n• Hydrate with water and chocolate milk."
                }
                else if veggieSwitch.isOn
                {
                    time = "1 Hour After Game"
                    fullText = "\n• Have a big bowl of pasta with veggie sauce and some parmesan cheese.\n\n• Have some nuts to restore fats.\n\n• Eat a salad with lots of veggies and light dressing to restore needed nutrients.\n\n• Hydrate with water and chocolate milk."
                }
                else if veganSwitch.isOn
                {
                    time = "1 Hour After Game"
                    fullText = "\n• Have a big bowl of pasta with a vegetable sauce.\n\n• Have nuts to restore fats.\n\n• A quinoa and lentil salad will be filling and restore protein to help muscles recover.\n\n• Hydrate with water and a sports drink to replenish electrolyte stores."
                }
                else
                {
                    time = "1 Hour After Game"
                    fullText = "\n• Have a turkey, ham, or chicken sandwich with cheese on whole wheat bread.\n\n•  Have potato or pasta salad for some added carbs. \n\n• Have some peppers, carrots, or celery for extra nutrients.\n\n• Hydrate with water and chocolate milk."
                    
                }
            }
            else if pickerLabel.text == "Dinner"
            {
                if GFSwitch.isOn && veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "Night Before"
                    fullText = "\n• Have a large serving of pasta with veggie sauce.\n\n• Eat a salad with lots of veggies for added protein, fiber, and nutrients.\n\n• Garlic bread as a side will provide added carbs.\n\n• Drink lots of water and only water to hydrate."
                }
                else if GFSwitch.isOn && veggieSwitch.isOn
                {
                    time = "Night Before"
                    fullText = "\n• Have a large serving of gluten free pasta with veggie sauce and parmesan cheese.\n\n• Eat a salad with lots of veggies for added protein, fiber, and nutrients.\n\n• A side of a baked sweet potato will be provide extra carbs.\n\n• Drink lots of water and only water to hydrate."
                }
                else if GFSwitch.isOn && veganSwitch.isOn
                {
                    time = "Night Before"
                    fullText = "\n• Have a large serving of gluten free pasta with veggie sauce.\n\n• Eat a salad with lots of veggies for added protein, fiber, and nutrients.\n\n•  A side of a baked sweet potato will be provide extra carbs.\n\n• Drink lots of water and only water to hydrate."
                }
                else if veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "Night Before"
                    fullText = "\n• Have a large serving of pasta with veggie sauce.\n\n• Eat a salad with lots of veggies for added protein, fiber, and nutrients.\n\n• Garlic bread as a side will provide added carbs.\n\n• Drink lots of water and only water to hydrate."
                }
                else if GFSwitch.isOn
                {
                    time = "Night Before"
                    fullText = "\n• Have a large serving of gluten free pasta with meat sauce and parmesan cheese.\n\n• Eat a salad with lots of veggies for added protein, fiber, and nutrients.\n\n• A side of a baked sweet potato will be provide extra carbs.\n\n• Drink lots of water and only water to hydrate."
                }
                else if veggieSwitch.isOn
                {
                    time = "Night Before"
                    fullText = "\n• Have a large serving of pasta with veggie sauce and parmesan cheese.\n\n• Eat a salad with lots of veggies for added protein, fiber, and nutrients.\n\n• Garlic bread as a side will provide added carbs.\n\n• Drink lots of water and only water to hydrate."
                }
                else if veganSwitch.isOn
                {
                    time = "Night Before"
                    fullText = "\n• Have a large serving of pasta with veggie sauce.\n\n• Eat a salad with lots of veggies for added protein, fiber, and nutrients.\n\n• Garlic bread as a side will provide added carbs.\n\n• Drink lots of water and only water to hydrate."
                }
                else
                {
                    time = "Night Before"
                    fullText = "\n• Have a large serving of pasta with meat sauce and parmesan cheese.\n\n• Eat a salad with lots of veggies for added protein, fiber, and nutrients.\n\n• Garlic bread as a side will provide added carbs.\n\n• Drink lots of water and only water to hydrate."
                }
            }
            else if pickerLabel.text == "Snack"
            {
                if GFSwitch.isOn && veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Cahsew yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n•Oranges.\n\n• A sports bar or gummies."
                }
                else if GFSwitch.isOn && veggieSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Chesse sticks.\n\n•Oranges.\n\n• A sports bar or gummies."
                }
                else if GFSwitch.isOn && veganSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Cahsew yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n•Oranges.\n\n• A sports bar or gummies."
                }
                else if veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Cahsew yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n•Oranges.\n\n• A sports bar or gummies."
                }
                else if GFSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Chesse sticks.\n\n•Oranges.\n\n• A sports bar or gummies."
                }
                else if veggieSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Chesse sticks.\n\n•Oranges.\n\n• A sports bar or gummies."
                }
                else if veganSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Cahsew yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n•Oranges.\n\n• A sports bar or gummies."
                }
                else
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Chesse sticks.\n\n•Oranges.\n\n• A sports bar or gummies."
                }
            }
        }
        else if pickerControl.selectedSegmentIndex == 1
        {
            if pickerLabel.text == "Breakfast"
            {
                if GFSwitch.isOn && veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "5-8 Hours Before Kickoff"
                    fullText = "\n • Whole wheat pancakes with a little butter and organic maple syrup.\n\n• A side of scrambled eggs with veggies.\n\n•Sausage or bacon.\n\n"
                }
                else if GFSwitch.isOn && veggieSwitch.isOn
                {
                    time = "5-8 Hours Before Kickoff"
                    fullText = "\n• Whole wheat pancakes with organic maple syrup.\n\n• A side of scrambled eggs with veggies.\n\n• A cup full of fruit.\n\n• Orange juice, or water."
                }
                else if GFSwitch.isOn && veganSwitch.isOn
                {
                    time = "5-8 Hours Before Kickoff"
                    fullText = "\n• Gluten free pancakes with organic maple syrup.\n\n• A side of scrambled tofu with veggies and vegan chorizo.\n\n• A cup full of fruit.\n\n• Orange juice, or water."
                }
                else if veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "5-8 Hours Before Kickoff"
                    fullText = "\n• Whole wheat pancakes with organic maple syrup.\n\n• A side of scrambled tofu with veggies and vegan chorizo.\n\n• A cup full of fruit.\n\n• Orange juice, or water."
                    
                }
                else if GFSwitch.isOn
                {
                    time = "5-8 Hours Before Kickoff"
                    fullText = "\n• Gluten free pancakes with a little butter and organic maple syrup.\n\n• A side of scrambled eggs with veggies.\n\n• Sausage or bacon.\n\n• A cup full of fruit.\n\n• Orange juice, low fat milk, or water."
                }
                else if veggieSwitch.isOn
                {
                    time = "5-8 Hours Before Kickoff"
                    fullText = "\n• Whole wheat pancakes with organic maple syrup.\n\n• A side of scrambled eggs with veggies.\n\n• A cup full of fruit.\n\n• Orange juice, or water."
                }
                else if veganSwitch.isOn
                {
                    time = "5-8 Hours Before Kickoff"
                    fullText = "\n• Whole wheat pancakes with organic maple syrup.\n\n• A side of scrambled tofu with veggies and vegan chorizo.\n\n• A cup full of fruit.\n\n• Orange juice, or water."
                }
                else
                {
                    time = "5-8 Hours Before Kickoff"
                    fullText = "\n• Whole wheat pancakes with a little butter and organic maple syrup.\n\n• A side of scrambled eggs with veggies.\n\n• Sausage or bacon.\n\n• A cup full of fruit.\n\n• Orange juice, low fat milk, or water."
                }
            }
            else if pickerLabel.text == "Lunch"
            {
                if GFSwitch.isOn && veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Burrito bowl with veggies, beans, rice, cheese and tofu.\n\n• An apple of banana. \n\n • A large handful of cashews or almonds. \n\n• Hydrate with ots of water."
                }
                else if GFSwitch.isOn && veggieSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Burrito bowl with veggies, beans, rice, cheese and tofu.\n\n• An apple of banana. \n\n • A large handful of cashews or almonds. \n\n• Hydrate with lots of water."
                }
                else if GFSwitch.isOn && veganSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Burrito bowl with veggies, beans, rice, cheese and tofu.\n\n• An apple of banana. \n\n • A large handful of cashews or almonds. \n\n• Hydrate with lots of water."
                }
                else if veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Burrito bowl with veggies, beans, rice, and tofu.\n\n• An apple of banana. \n\n • A large handful of cashews or almonds. \n\n• Hydrate with lots of water."
                }
                else if GFSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Turkey, ham, or chicken sandwich with lettuce and cheese on gluten free bread.\n\n• An apple or banana.\n\n• A large handful of cashews or almonds.\n\n• Hydrate with lots of water."
                }
                else if veggieSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Burrito bowl with veggies, beans, rice, cheese and tofu.\n\n• An apple of banana. \n\n • A large handful of cashews or almonds. \n\n• Hydrate with lots of water."
                }
                else if veganSwitch.isOn
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Burrito bowl with veggies, beans, rice, and tofu.\n\n• An apple of banana. \n\n • A large handful of cashews or almonds. \n\n• Hydrate with lots of water."
                }
                else
                {
                    time = "3-4 Hours Before Kickoff"
                    fullText = "\n• Turkey, ham, or chicken sandwich with lettuce and cheese on whole wheat bread.\n\n• An apple or banana.\n\n• A large handful of cashews or almonds.\n\n• Hydrate with lots of water."
                }
            }
            else if pickerLabel.text == "Dinner"
            {
                if GFSwitch.isOn && veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "1-2 Hours After Game"
                    fullText = "\n• Large bowl of pasta with lentils, beans, and veggie sauce.\n\n• Two baked sweet potatoes.\n\n• A spinach salad with tomatoes, cucumbers, avocado and carrots. \n\n• Lots of water."
                }
                else if GFSwitch.isOn && veggieSwitch.isOn
                {
                    time = "1-2 Hours After Game"
                    fullText = "\n•  Large bowl of pasta with lentils, beans, and veggie sauce, and cheese.\n\n• Brown rice.\n\n• One baked sweet potato.\n\n• A spinach salad with crutons, tomatoes, cucumbers, avocado, and carrots. \n\n• Low fat milk and water."
                }
                else if GFSwitch.isOn && veganSwitch.isOn
                {
                    time = "1-2 Hours After Game"
                    fullText = "\n• Large bowl of pasta with lentils, beans, and veggie sauce.\n\n• Two baked sweet potatoes.\n\n• A spinach salad with tomatoes, cucumbers, avocado and carrots. \n\n• Lots of water."
                }
                else if veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "1-2 Hours After Game"
                    fullText = "\n• Large bowl of pasta with lentils, beans, and veggie sauce.\n\n• Two baked sweet potatoes.\n\n• A spinach salad with crutons, tomatoes, cucumbers, avocado, and carrots. \n\n• Lots of water."
                }
                else if GFSwitch.isOn
                {
                    time = "1-2 Hours After Game"
                    fullText = "\n• Grilled Salmon with seasoning.\n\n• Brown rice.\n\n• One baked sweet potato.\n\n• A spinach salad with tomatoes, cucumbers, avocado and carrots. \n\n• Low fat milk and water."
                }
                else if veggieSwitch.isOn
                {
                    time = "1-2 Hours After Game"
                    fullText = "\n•  Large bowl of pasta with lentils, beans, and veggie sauce, and cheese.\n\n• Brown rice.\n\n• One baked sweet potato.\n\n• A spinach salad with crutons, tomatoes, cucumbers, avocado, and carrots. \n\n• Low fat milk and water."
                }
                else if veganSwitch.isOn
                {
                    time = "1-2 Hours After Game"
                    fullText = "\n• Large bowl of pasta with lentils, beans, and veggie sauce.\n\n• Two baked sweet potatoes.\n\n• A spinach salad with crutons, tomatoes, cucumbers, avocado, and carrots. \n\n• Lots of water."
                }
                else
                {
                    time = "1-2 Hours After Game"
                    fullText = "\n• Grilled Salmon with seasoning.\n\n• Brown rice.\n\n• One baked sweet potato.\n\n• A spinach salad with crutons, tomatoes, cucumbers, avocado, and carrots. \n\n• Low fat milk and water."
                }
            }
            else if pickerLabel.text == "Snack"
            {
                if GFSwitch.isOn && veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Cahsew yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Oranges.\n\n• A sports bar or gummies."
                }
                else if GFSwitch.isOn && veggieSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Chesse sticks.\n\n• Oranges.\n\n• A sports bar or gummies."
                }
                else if GFSwitch.isOn && veganSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Cahsew yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Oranges.\n\n• A sports bar or gummies."
                }
                else if veggieSwitch.isOn && veganSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Cahsew yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Oranges.\n\n• A sports bar or gummies."
                }
                else if GFSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Chesse sticks.\n\n• Oranges.\n\n• A sports bar or gummies."
                }
                else if veggieSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Chesse sticks.\n\n• Oranges.\n\n• A sports bar or gummies."
                }
                else if veganSwitch.isOn
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Cahsew yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Oranges.\n\n• A sports bar or gummies."
                }
                else
                {
                    time = "1-2 Hours Before Kickoff"
                    fullText = "\n• Yogurt with fruit and granola.\n\n• Banana and peanut butter.\n\n• Apple and peanut butter.\n\n• Chesse sticks.\n\n•Oranges.\n\n• A sports bar or gummies."
                }
            }
        }
        let mealLabel = pickerLabel.text
        vc.mealLabel = mealLabel!
        vc.mealText = fullText
        vc.mealTime = time
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    @IBAction func gameTime(_ sender: UISegmentedControl) {
        
        
    }
    


    override func viewDidLoad() {
        gameTime(pickerControl)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

