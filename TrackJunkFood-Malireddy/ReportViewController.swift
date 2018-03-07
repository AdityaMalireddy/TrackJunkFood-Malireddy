//
//  ReportViewController.swift
//  TrackJunkFood-Malireddy
//
//  Created by student on 3/7/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {
    @IBOutlet weak var TextVW: UITextView!
    
    @IBAction func Reset(_ sender: Any) {
        AppDelegate.food.reset()
        TextVW.text = AppDelegate.food.combinedReport()
    }
    
    @IBAction func Record(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.food.loadData()
        TextVW.text=AppDelegate.food.combinedReport()

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
