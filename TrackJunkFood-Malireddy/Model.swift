//
//  Model.swift
//  TrackJunkFood-Malireddy
//
//  Created by student on 3/6/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

struct FoodData {
    var Name:String
    var Calories:Double
    var Tally:Int
    
    init(name: String, caloriesPerServing: Double, noOfServings:Int) {
        Name = name
        Calories = caloriesPerServing
        Tally = noOfServings
        
    }
    
}

class FoodRecorder{
    var Foods : [FoodData]
    
    init() {
        Foods = []
    }
    
    func loadData(){
        Foods = [FoodData(name: "PopCorn", caloriesPerServing: 106, noOfServings: 1),
                 FoodData(name: "Coke", caloriesPerServing: 140, noOfServings: 1),
                 FoodData(name: "Potato Chips", caloriesPerServing: 152, noOfServings: 1),
                 FoodData(name: "Cheese Burger", caloriesPerServing: 188, noOfServings: 1)]
    }
    func addFoodItem(food:String,cal:Double) {
        Foods.append(FoodData(name:food,caloriesPerServing:cal,noOfServings:0))
    }
    
    func increaseTally(forItem i : Int){
        Foods[i].Tally += 1
        
    }
    
    func getCalories(forItem i : Int) -> Double{
        return Double(Foods[i].Tally)*Foods[i].Calories
        
    }
    func report(forItem i : Int) -> String{
        return "The Calories consumed for \(Foods[i].Name) is \(getCalories(forItem: i)). "
        
    }
    func totalCalories() -> Double {
        var totalCalories = 0.0
        for i in 0...Foods.count-1{
            totalCalories+=getCalories(forItem: i)
        }
        return totalCalories
        
    }
    func combinedReport() -> String{
        var rep = ""
        for i in 0...Foods.count-1{
            rep += report(forItem: i) + "\n"
        }
        return rep + "\nTotal calories consumed is \(totalCalories())."
    }
    
    
    func reset(){
        for i in 0...Foods.count-1{
            Foods[i].Tally=0
        }
    }
    
    
}
