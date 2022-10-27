//
//  ViewController.swift
//  Stopwatch
//
//  Created by admin on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TimerLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var timer:Timer = Timer()
    var count:Int = 0
    var timerCounting:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.isEnabled = true
        stopButton.isEnabled = false

        NotificationCenter.default.addObserver(self,
                                               selector: #selector(applicationDidBecomeActive),
                                               name: Notification.Name("Timer"),
                                               object: nil)}
    
    //Событие происходит каждый раз при открытии, сворачивании и разворачивании приложения
    @objc func applicationDidBecomeActive(notification: NSNotification) {
        guard timerCounting else {return}
        startButton.isEnabled ? setTimer() : stop()
    }
    
    //Stop-Reset button behaviour
    @IBAction func StopTapped(_ sender: Any) {
        if timerCounting {
            stop()
            stopButton.setTitle("Reset", for: .normal)
            startButton.setTitle("Resume", for: .normal)
            timerCounting = false
        } else {
            self.count = 0
            self.TimerLabel.text = self.makeTimeString(minutes: 0, seconds: 0)
            startButton.isEnabled = true
            stopButton.setTitle("Stop", for: .normal)
            startButton.setTitle("Start", for: .normal)
            stopButton.isEnabled = false
        }
        
    }
    
    @IBAction func StartTapped(_ sender: Any) {
        timerCounting = true
        setTimer()
        stopButton.setTitle("Stop", for: .normal)
        startButton.setTitle("Start", for: .normal)
    }
    
    private func setTimer() {
           timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
           RunLoop.current.add(timer, forMode: .common)
        startButton.isEnabled = false
        stopButton.isEnabled = true
    }
    
    private func stop() {
        timer.invalidate()
        startButton.isEnabled = true
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
