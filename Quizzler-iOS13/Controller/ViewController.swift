//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Gianluca Po on 12/07/2019.
//  Copyright © 2019 Gianluca Po. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scroeLbl: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var thirdBtn: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnsw = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnsw)
        
            if userGotItRight {
                sender.backgroundColor = UIColor.green
            } else {
                sender.backgroundColor = UIColor.red
            }
            
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI),userInfo: nil,repeats: false)
        
    }
    
    @objc func updateUI()  {
        
        trueBtn.setTitle(quizBrain.getBtnsText().first!, for: .normal)
        falseBtn.setTitle(quizBrain.getBtnsText().last!, for: .normal)
        thirdBtn.setTitle(quizBrain.getBtnsText()[1], for: .normal)
        
        questionLabel.text = quizBrain.getQText()
        
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
        thirdBtn.backgroundColor = UIColor.clear
        
        progressBar.progress = quizBrain.getProgress()
        scroeLbl.text = "Score: " + "\(quizBrain.getScore())"
    }
    
}

