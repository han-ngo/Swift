//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Mia Ngo on 3/19/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quizzes = [QuizQuestion(q: "Mexico is south of the Equator", a: "False"),
                QuizQuestion(q: "New Zealand has more sheep than people", a: "True"),
                QuizQuestion(q: "There is a country that begins with every letter of the alphabet", a: "False"),
                QuizQuestion(q: "It's possible to travel on roads from the United States to South America", a: "False"),
                QuizQuestion(q: "China only has one time zone", a: "True"),
                QuizQuestion(q: "Paris is further north than Toronto", a: "True")
    ]
    
    var curIndex = 0
    var curScore = 0

    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if (userAnswer == quizzes[curIndex].answer) {
            curScore += 1
            return true
        }
        return false
    }
    
    mutating func nextQuestion() {
        curIndex += 1
        if (curIndex >= quizzes.count) {
            curIndex = 0;
        }
    }
    
    mutating func getQuestionText() -> String {
        return quizzes[curIndex].question
    }
    
    func getScore() -> String {
        return "Score: \(curScore)"
    }
    
    func getProgress() -> Float {
       return Float(curIndex)/Float(quizzes.count)
    }
}
