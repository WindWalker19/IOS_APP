//
//  ViewController.swift
//  Xylophone
//
//  Created by Sonam Sherpa on 9/22/20.
//  Copyright © 2020 Sonam Sherpa. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
//        playSound(tagg: sender.tag)
        playSound(soundName: sender.currentTitle!)
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
//        print("start")
        //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
//            print("end")
            
          }
        
    }
    
    
    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
                    player = try! AVAudioPlayer(contentsOf: url!)
        
                    player.play()
        
    }
    
    
//    func playSound(tagg:Int) {
//        if (tagg == 0){
//            let url = Bundle.main.url(forResource: "C", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//
//            player.play()
//        }
//        else if (tagg == 1){
//            let url = Bundle.main.url(forResource: "D", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//
//            player.play()
//        }
//        else if (tagg == 2){
//            let url = Bundle.main.url(forResource: "E", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//
//            player.play()
//        }
//        else if (tagg == 3){
//            let url = Bundle.main.url(forResource: "F", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//
//            player.play()
//        }
//        else if (tagg == 4){
//            let url = Bundle.main.url(forResource: "G", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//
//            player.play()
//        }
//        else if (tagg == 5){
//            let url = Bundle.main.url(forResource: "A", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//
//            player.play()
//        }
//        else if (tagg == 6){
//            let url = Bundle.main.url(forResource: "B", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//
//            player.play()
//        }
//
//
//
//
//
//
//    }
}

