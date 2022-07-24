//
//  GameManagerVM.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 7/7/22.
//

import SwiftUI
import Foundation

class GameManagerVM : ObservableObject {
    
    
    static var currentIndex = 0
    
    static func createGameModel(i : Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData[i])
      //  return Quiz(currentQuestionIndex: i, quizModel: quizData[i], quizCompleted: false)
    }
    
    @Published var model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
    
    
    var timer = Timer()
    var maxProgress = 15
    
    @Published var progress = 0
    
    init() {
        self.start()
    }
    
        func verifyAnswer(selectedOption: QuizOption) {
            
            for index in model.quizModel.optionList.indices {
                model.quizModel.optionList[index].isMatched = false
                model.quizModel.optionList[index].isSelected = false
            }
    
            if let index = model.quizModel.optionList.firstIndex(where: {$0.optionId == selectedOption.optionId}) {
           if selectedOption.optionId == model.quizModel.answer {
               model.quizModel.optionList[index].isMatched = true
               model.quizModel.optionList[index].isSelected = true
               
               
               DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                   if (GameManagerVM.currentIndex < 2) {
                       GameManagerVM.currentIndex = GameManagerVM.currentIndex + 1
                       self.model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
                   } else {
                       self.model.quizCompleted = true
                       self.model.quizWinningStatus = true
                       self.reset()
                   }
               }
               
           }
               else {
                   model.quizModel.optionList[index].isMatched = false
                   model.quizModel.optionList[index].isSelected = true
               }
           }
        }
    
    
    func restartGame() {
        GameManagerVM.currentIndex = 0
        model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
        self.start()
    }
    
    
    
    //MARK: for Timer
    
    func start() {
     //   self.progress = 0
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats:  true, block: { time in
            if self.progress == self.maxProgress {
                self.model.quizCompleted = true
                self.model.quizWinningStatus = false
                self.reset()
            } else {
                self.progress += 1
            }
        })
    }
                                     
     func reset() {
         timer.invalidate()
         self.progress = 0
        }
    
 //  var data = quizData[0]
    
//
//    func verifyAnswer(selectedOption: QuizOption) {
//
//       if let index = quizRecord.optionList.firstIndex(where: {$0.optionId == selectedOption.optionId}) {
//       if selectedOption.optionId == GameManagerVM.quizData[0].answer {
//           quizRecord.optionList[index].isMatched = true
//           quizRecord.optionList[index].isSelected = true
//       }
//           else {
//               quizRecord.optionList[index].isMatched = false
//               quizRecord.optionList[index].isSelected = true
//           }
//       }
//    }
    
}

extension GameManagerVM {
    static var quizData: [QuizModel] {
        [
            QuizModel(question1: "which is the fastest animal in the world?",
                      answer: "B",
                      optionList: [QuizOption(id: 11, optionId: "A", option: "Turtle", color: Color.yellow),
                                   QuizOption(id: 12, optionId: "B", option: "Cheetah", color: Color.red),
                                   QuizOption(id: 13, optionId: "C", option: "Rabbit", color: Color.green),
                                   QuizOption(id: 14, optionId: "D", option: "Leopad", color: Color.purple)
                                  ]),
            
            
            QuizModel(question1: "Which of these animals swims in upright position?",
                      answer: "C",
                      optionList: [QuizOption(id: 11, optionId: "A", option: "Sea Lion", color: Color.yellow),
                                   QuizOption(id: 12, optionId: "B", option: "Sea Urchin", color: Color.red),
                                   QuizOption(id: 13, optionId: "C", option: "Seahorse", color: Color.green),
                                   QuizOption(id: 14, optionId: "D", option: "Sea slug", color: Color.purple)
                                  ]),
            
            QuizModel(question1: "Which is the world largest living fish?",
                      answer: "B",
                      optionList: [QuizOption(id: 31, optionId: "A", option: "Manta Ray", color: Color.yellow),
                                   QuizOption(id: 32, optionId: "B", option: "Whale Shark", color: Color.red),
                                   QuizOption(id: 33, optionId: "C", option: "Marlin", color: Color.green),
                                   QuizOption(id: 34, optionId: "D", option: "Sailfish", color: Color.purple)
                                  ]),
        ]
        
    }
}
