//
//  ViewController.swift
//  Dice_app
//
//  Created by Sonam Sherpa on 9/13/20.
//  Copyright © 2020 Sonam Sherpa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
//    var leftDiceNum = 1
//    var rightDiceNum = 5
    
    //When the app loads have the below view.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Show dice 6 as soon as loads
        //who.what = value
        // diceImageView1.alpha = 0.8
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        
        
    }
//The button funtion. Unless the button is pressed we see the first view from viewdidload.
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //Range from 0 till 5.
        let r = Int.random(in: 0...5)
        let l = Int.random(in: 0...5)
        let diceNum = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") ,#imageLiteral(resourceName: "DiceFour") ,#imageLiteral(resourceName: "DiceFive") ,#imageLiteral(resourceName: "DiceSix") ]
        
        // random Diceimages.
        diceImageView1.image = diceNum [l]
        diceImageView2.image = diceNum [r]
        
//        diceImageView1.image = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") ,#imageLiteral(resourceName: "DiceFour") ,#imageLiteral(resourceName: "DiceFive") ,#imageLiteral(resourceName: "DiceSix") ] [leftDiceNum]
//        diceImageView2.image = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") ,#imageLiteral(resourceName: "DiceFour") ,#imageLiteral(resourceName: "DiceFive") ,#imageLiteral(resourceName: "DiceSix") ] [rightDiceNum]
        //out of index error at end.
//        leftDiceNum = leftDiceNum + 1
//        rightDiceNum = rightDiceNum - 1
        
//        print(randomIntl)
        
// Need to have a symettric space in swift or else we might have error.
    }
    
}

