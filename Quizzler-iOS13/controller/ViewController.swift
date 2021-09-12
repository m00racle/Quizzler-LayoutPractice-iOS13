//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var quizScreen: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var midButton: UIButton!
    @IBOutlet weak var botButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    }
    
    let host:QuizHost = QuizBot(pool: Questions_Eng().pool)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateUI() {
//        update the UI
        scoreLabel.text = "score: " + host.showScore()
        quizScreen.text = host.ask()
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

