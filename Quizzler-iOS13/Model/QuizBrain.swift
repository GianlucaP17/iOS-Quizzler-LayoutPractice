//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by gianluca posca on 28/05/21.
//  Copyright © 2021 Gianluca Po. All rights reserved.
//

import Foundation
struct QuizBrain {
    
    var questionNumber = 0
    
    var score = 0
    
    // non devo init perchè p già completo
    let quiz = [ Questions(q: "Which is the largest organ in the human body?", a:
                            ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                 Questions(q: "Five dollars is worth how many nickels?", a:
                            ["25", "50", "100"], correctAnswer: "100"),
                 Questions(q: "What do the letters in the GMT time zone stand for?", a:
                            ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                 Questions(q: "What is the French word for 'hat'?", a:
                            ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                 Questions(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                 Questions(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                 Questions(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                 Questions(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                 Questions(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                 Questions(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
]
    
    mutating func checkAnswer(_ userAnswer:String)->Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            self.score += 1
            return true
        } else {
            self.score -= 1
            return false
        }
    }
    
    func getQText() -> String {
        return quiz[questionNumber].text
    }
    
    func getBtnsText() -> [String] {
        return quiz[questionNumber].answer
    }
    
    func getProgress() -> Float {
        return Float(questionNumber+1)/Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber+1 < quiz.count {
            self.questionNumber += 1
        } else {
            self.questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
