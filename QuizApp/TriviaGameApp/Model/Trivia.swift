//
//  Trivia.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 9/7/22.
//

import Foundation

struct Trivia: Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        var id : UUID {
            UUID()
        }
        
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correct_answer: String
        var incorrect_answers: [String]
        
        var formatedQuestion: AttributedString {
            do {
                return try AttributedString(markdown: question)
            }
            catch {
                print("Error setting formattedQuestion: \(error)")
                return ""
            }
        }
        var answers: [Answer] {
            do {
                let correct = [Answer(text: try AttributedString(markdown: correct_answer), isCorrect: true)]
                let incorretcs = try incorrect_answers.map { answer in
                    Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                let allAnswers = correct + incorretcs
                
                return allAnswers.shuffled()
            } catch {
                print("Error setting answers: \(error)")
                return []
            }
        }
    }
}









