//
//  AddFoodItemViewController.swift
//  TrackJunkFood-Malireddy
//
//  Created by student on 3/8/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class AddFoodItemViewController: UIViewController {

    @IBOutlet weak var caloriesTF: UITextField!
    @IBOutlet weak var foodItemTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    // MARK: - Navigation

    @IBOutlet weak var label: UILabel!
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let food = foodItemTF.text!
        let cal  = caloriesTF.text!
        if segue.identifier == "doneid" {
            if !(food == "") || !(cal=="") {
                AppDelegate.food.addFoodItem(food: food, cal: Double(cal)!)            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let food = foodItemTF.text!
        let cal  = caloriesTF.text!
        if identifier == "doneid" {
            if (food == "") || (cal=="") {
                label.text = "Please enter some values"
                return false          }
        }
        
        return true
    }
}
