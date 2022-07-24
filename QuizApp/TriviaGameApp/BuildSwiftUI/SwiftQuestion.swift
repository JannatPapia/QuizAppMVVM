//
//  SwiftQuestion.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 15/7/22.
//

import Foundation

struct SwiftQuestion {
                 
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex : Int
    
    static let allQuestions : [SwiftQuestion] = [
    SwiftQuestion(questionText: "What was the first computer bug?",
                  possibleAnswers: [
                    "Fly",
                    "Moth",
                    "Ant",
                    "Beetle",
              ],
                  correctAnswerIndex: 1),
    
    SwiftQuestion(questionText: "What does IOS stand for?",
                  possibleAnswers: [
                    " iPhone Operation System",
                    "Intelligent Operating System",
                    "Internet Operating System",
                    "None of the above",
              ],
                  correctAnswerIndex: 0),
    
    SwiftQuestion(questionText: "Which is a default UI Property?",
                  possibleAnswers: [
                    "Assign",
                    "Atomic",
                    "Ant",
                    "Breetle",
              ],
                  correctAnswerIndex: 1),
    
    SwiftQuestion(questionText: "which of the following commands displays the syntax for the clock command?",
                  possibleAnswers: [
                    "cl?",
                    "clock?",
                    "clock?",
                    "None of the above",
              ],
                  correctAnswerIndex: 1),
    
    SwiftQuestion(questionText: "What does CLI stand for?",
                  possibleAnswers: [
                    " Caller line interface",
                    "Command line interface",
                    "Common line interface",
                    "None of the above",
              ],
                  correctAnswerIndex: 1),
    
    SwiftQuestion(questionText: "what is facetime in iPhone?",
                  possibleAnswers: [
                    "Editing Photos",
                    "Video Calls",
                    "Digital Photos",
                    "Taking Videos",
              ],
                  correctAnswerIndex: 1),
    ]
}
