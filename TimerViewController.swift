//
//  TimerViewController.swift
//  PowerHour
//
//  Created by Morten Stulen on 11.09.14.
//  Copyright (c) 2014 Morten Stulen. All rights reserved.
//
let TIMER_LABEL_INITIAL_VAL:Int =  60
var timerVal:Int = TIMER_LABEL_INITIAL_VAL
var timer:NSTimer!

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var timerLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(named: "beer.jpg")
        
        timerVal = TIMER_LABEL_INITIAL_VAL
        timerLbl.text = String(TIMER_LABEL_INITIAL_VAL)
        startTimer()
    }
    override func viewDidDisappear(animated: Bool) {
        timer.invalidate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func startTimer()
    {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("updateTimer:"), userInfo: nil, repeats: true)
    }
    
    
    func updateTimer(dt:NSTimer)
    {
        timerVal--
        if timerVal==0{
            timerLbl.text = "DRINK"
        }else if timerVal<0{
            timer.invalidate()
        } else{
            timerLbl.text = "\(timerVal)"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
