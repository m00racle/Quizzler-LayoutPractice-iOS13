//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    the Quiz Host enter the game
    var host:QuizHost = QuizBot(pool: Questions_Eng().pool)
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var quizScreen: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var midButton: UIButton!
    @IBOutlet weak var botButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
//        check out user response
        if host.checksOut(response: sender.currentTitle!) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
//        host move to the next round
        host.nextRound()
//        add delays for the color effect to take place
        _ = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: {_ in self.updateUI()})
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateUI() {
//        update the UI
        scoreLabel.text = "score: " + host.showScore()
        quizScreen.text = host.ask()
        progressBar.progress = Float(host.round + 1)/Float(host.pool.count)
//        NOTE: host.round + 1 => because round starts from 0 while progress should starts from 1!
//        update the buttons area
        topButton.backgroundColor = UIColor.clear
        midButton.backgroundColor = UIColor.clear
        botButton.backgroundColor = UIColor.clear
        
        let choices:[String] = host.passChoices()
        
        if choices.count < 3 {
//            true or false buttons
            topButton.isEnabled = false
            topButton.isHidden = true
            
            midButton.setTitle(choices[0], for: UIControl.State.normal)
            botButton.setTitle(choices[1], for: UIControl.State.normal)
        } else {
//            multiple choice buttons
            topButton.isEnabled = true
            topButton.isHidden = false
            topButton.setTitle(choices[0], for: UIControl.State.normal)
            midButton.setTitle(choices[1], for: UIControl.State.normal)
            botButton.setTitle(choices[2], for: UIControl.State.normal)
        }
    }

}

