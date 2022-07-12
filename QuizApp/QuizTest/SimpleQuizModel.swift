//
//  SimpleQuizModel.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 13/7/22.
//

import Foundation

struct SimpleQuizModel {
    var img : String?
    var text : String?
    var answer : [String]
    // specify what is the correct answer
    var correct : Int?
}

var myQuiz2: [SimpleQuizModel] = [

  SimpleQuizModel(img: "image",
                  text: "What is your name?",
                  answer: ["Olivia", "Nabil", "Nazmul", "Mira"],
                  correct: 3),
  
  SimpleQuizModel(img: "image",
                  text: "Where are you live ?",
                  answer: ["Uttara", "Banani", "Mirpur", "Mughda"],
                  correct: 1),
  
  SimpleQuizModel(img: "image",
                  text: "How Old are you?",
                  answer: ["24", "25", "26", "27"],
                  correct: 3),
  
  SimpleQuizModel(img: "image",
                  text: "What is your Favorite Color?",
                  answer: ["Green", "Yellow", "Blue", "Black"],
                  correct: 4),
  
  SimpleQuizModel(img: "image",
                  text: "What is your favorite food?",
                  answer: ["Chicken", "Beef", "Mutton", "Duck"],
                  correct: 2),
]

func saveScore(quiz: String, score: Int) {
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore(quiz: String) -> Int {
    return UserDefaults.standard.integer(forKey: quiz)
}
