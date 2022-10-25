//
//  ViewController.swift
//  Stopwatch
//
//  Created by admin on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TimerLabel: UILabel!
    
    @IBOutlet weak var startStopButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var timer:Timer = Timer()
    var count:Int = 0
    var timerCounting:Bool = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startStopButton.backgroundColor = UIColor.green
        
    }
    
    //Reset button behaviour
    @IBAction func resetTapped(_ sender: Any) {
        //asking user if he want to reset timer
        let alert = UIAlertController(title: "Reset", message: "Reset the timer?", preferredStyle: .alert)
        //yes option
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(_) in
            self.count = 0
            self.timer.invalidate()
            self.TimerLabel.text = self.makeTimeString(minutes: 0, seconds: 0)
            self.startStopButton.setTitle("Start", for: .normal)
            //self.startStopButton.setTitleColor(UIColor.green, for: .normal)
            self.startStopButton.backgroundColor = UIColor.green
        }))
        //no option
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {(_) in
        //nothing
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func startStopTapped(_ sender: Any) {
        if(timerCounting){
            timerCounting = false
            timer.invalidate()
            startStopButton.setTitle("Start", for: .normal)
            startStopButton.backgroundColor = UIColor.green
            
        }
        else{
         timerCounting = true
            startStopButton.setTitle("Stop", for: .normal)
            self.startStopButton.backgroundColor = UIColor.red
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        }
    }
    
    @objc func timerCounter() -> Void {
        count += 1
        let time = secondsToHoursMinutesSeconds(seconds: count)
        let timeString = makeTimeString(minutes:time.0, seconds:time.1)
        TimerLabel.text = timeString
    }
    
    func secondsToHoursMinutesSeconds(seconds:Int) -> (Int, Int){
        return (((seconds % 3600) / 60), ((seconds % 3600) % 60))
    }
    
    func makeTimeString(minutes:Int, seconds:Int) -> String {
        var timeString = ""
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        return timeString
    }
    
}
