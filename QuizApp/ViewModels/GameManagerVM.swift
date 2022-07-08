//
//  GameManagerVM.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 7/7/22.
//

import SwiftUI
import Foundation

class GameManagerVM {
   var data = quizData[0]
}

extension GameManagerVM {
    static var quizData: [QuizModel] {
        [
            QuizModel(question: "which is the fastest animal in the world?",
                      answer: "B",
                      optionList: [QuizOption(id: 11, optionId: "A", option: "Turtle", color: Color.yellow),
                                   QuizOption(id: 12, optionId: "B", option: "Cheetah", color: Color.red),
                                   QuizOption(id: 13, optionId: "C", option: "Rabbit", color: Color.green),
                                   QuizOption(id: 14, optionId: "D", option: "Leopad", color: Color.purple)
                                  ]),
            
            
            QuizModel(question: "Which of these animals swims in upright position?",
                      answer: "C",
                      optionList: [QuizOption(id: 11, optionId: "A", option: "Sea Lion", color: Color.yellow),
                                   QuizOption(id: 12, optionId: "B", option: "Sea Urchin", color: Color.red),
                                   QuizOption(id: 13, optionId: "C", option: "Seahorse", color: Color.green),
                                   QuizOption(id: 14, optionId: "D", option: "Sea slug", color: Color.purple)
                                  ]),
            
            QuizModel(question: "Which is the world largest living fish?",
                      answer: "B",
                      optionList: [QuizOption(id: 31, optionId: "A", option: "Manta Ray", color: Color.yellow),
                                   QuizOption(id: 32, optionId: "B", option: "Whale Shark", color: Color.red),
                                   QuizOption(id: 33, optionId: "C", option: "Marlin", color: Color.green),
                                   QuizOption(id: 34, optionId: "D", option: "Sailfish", color: Color.purple)
                                  ]),
        ]
        
    }
}
