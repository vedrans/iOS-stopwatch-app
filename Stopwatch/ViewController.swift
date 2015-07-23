//
//  ViewController.swift
//  Stopwatch
//
//  Created by Vedran Stankovic on 17/05/15.
//  Copyright (c) 2015 Vedran Stankovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var counter = 0
    var isActive = false
    
    func updateTime() {

        counter++
        time.text = String(counter)

    }
    

    @IBOutlet var time: UILabel!

    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        counter = 0
        time.text = "0"
        isActive = false
        
    }
    @IBAction func play(sender: AnyObject) {
        
        if isActive == false {
            
            isActive = true
        
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        }
    }
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        isActive = false
        
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

