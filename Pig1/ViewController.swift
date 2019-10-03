//
//  ViewController.swift
//  Pig1
//
//  Created by Tallapaneni, Kalyan on 10/1/19.
//  Copyright © 2019 Tallapaneni, Kalyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 239/255, green: 115/255, blue: 193/255, alpha: 1.0)
    }
    var player1 = true
    var T1 = 0
    var R1 = 0
    var T2 = 0
    var R2 = 0
    var sad = "sorry, you rolled a one"

    @IBOutlet var TScore1: UILabel!
    
    @IBOutlet var RScore1: UILabel!
    
    @IBOutlet var TScore2: UILabel!
    
    @IBOutlet var RScore2: UILabel!
    
    @IBOutlet var numRolled: UILabel!
    
    @IBOutlet var result: UILabel!
    
    func randNum() -> Int {
        var randomNum = Int.random(in: 1...6)
        return randomNum
        
    }
    
    @IBAction func roll(_ sender: Any) {
        let rolled = randNum()
        numRolled.text = String(rolled)
        if player1 {
            if rolled == 1 {
                R1 = 0
                player1 = false
            }
            else {
                R1 = R1 + rolled
                T1 = T1 + rolled
                if T1 >= 100 {
                    result.text = "Player 1 wins!"
                }
                TScore1.text = String(T1)
                RScore1.text = String(R1)
            }
        }
        else {
            if rolled == 1 {
                R2 = 0
                player1 = true
            }
            else {
                R2 = R2 + rolled
                T2 = T2 + rolled
                if T2 >= 100 {
                    result.text = "Player 2 wins!"
                }
                TScore2.text = String(T2)
                RScore2.text = String(R2)
            }
        }
    }
        func stop1 () {
            if player1 == true {
                player1 = false
            }
            else {
                player1 = true
            }
        }
    @IBAction func stop(_ sender: Any) {
        stop1()
    }

}
