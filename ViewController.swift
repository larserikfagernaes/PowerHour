//
//  ViewController.swift
//  PowerHour
//
//  Created by Morten Stulen on 10.09.14.
//  Copyright (c) 2014 Morten Stulen. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    var change = "Change in this project"
    @IBOutlet weak var gameModePicker: UIPickerView!
    var gameTypes = ["Hardcore", "Hard", "Medium", "Easy"]
    
    @IBAction func startTimer(sender: AnyObject) {
  
            performSegueWithIdentifier("timerSegue", sender: self)
    }
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(named: "beer.jpg")
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gameTypes.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
       return gameTypes[row]
    }
    
    //HOW???
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) -> String {
        var itemSelected = gameTypes[row]
        if itemSelected == "Hardcore"{
            print("I want to go to Hardcoremode view now through a segue")
        }
        return itemSelected
        
    }
    func selectedRowInComponent(component: Int) -> Int{
        var itemselected = selectedRowInComponent(component)
        return itemselected
    }
    


    

}

