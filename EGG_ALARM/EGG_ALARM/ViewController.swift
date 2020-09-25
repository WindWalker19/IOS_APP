//
//  ViewController.swift
//  EGG_ALARM
//
//  Created by Sonam Sherpa on 9/24/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    let eggTime = ["Soft":300,"Medium":420,"Hard":720]
    var totalTime = 0
    var secondsPassed = 0
    var T = Timer()
    var percentageChange = 0
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        T.invalidate()
        secondsPassed = 0
        titleLabel.text = sender.currentTitle
        progressBar.progress = 0.0
        
//        alarm_set(eggType: sender.currentTitle!)
        
//        timing(eggTime: sender.currentTitle!)
        
//      Setting the opacity of the button.
        let hardness = sender.currentTitle!
        totalTime = eggTime[hardness]!
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 05
                        }
        T = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTime), userInfo:nil, repeats: true)
    }
    
    @objc func updateTime(){
        if secondsPassed < totalTime{
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            
        }
        else{
            T.invalidate()
            titleLabel.text = "DONE"
            playSound()
        }
    }
    
//    func timing(eggTime: String){
//        if(eggTime == "Soft"){
//            secondsRemaining = 5
//            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
//                    if self.secondsRemaining > 0 {
//                        print ("\(self.secondsRemaining) seconds")
//                        self.secondsRemaining -= 1
//                    } else {
//                        Timer.invalidate()
//                    }
//
//                }
//        }
//
//
//    }
    
    
    //Function for setting the alarm clock.
//    func alarm_set(eggType: String){
//
//        //Using the switch case.
//        switch eggType {
//        case "Soft":
//            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//                            self.playSound()
//                            }
//        case "Medium":
//            DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
//                            self.playSound()
//                            }
//        case "Hard":
//            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
//                            self.playSound()
//                            }
//        default:
//            print("Nothing found.")
//        }
        
        
        //Usinf the if else.
//        if (eggType == "Soft"){
//                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//                self.playSound()
//                }
//            }
//
//        else if (eggType == "Medium"){
//            DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
//            self.playSound()
//            }
//        }
//
//        else if (eggType == "Hard"){
//            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
//            self.playSound()
//            }
//        }
        
//        }
    

    
//Function for playing sound of the alarm.
    func playSound(){
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
                    player = try! AVAudioPlayer(contentsOf: url!)
        
                    player.play()
        
    }
        
    
}

