//
//  TriviaManager.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 9/7/22.
//

import Foundation
import SwiftUI

class TriviaManager: ObservableObject {
    
    private(set) var trivia: [Trivia.Result] = []
    @Published private(set) var length = 0
    @Published private(set) var index = 0
    @Published private(set) var reachedEnd = false
    @Published private(set) var answerSelected = false
    @Published private(set) var question: AttributedString = ""
    @Published private(set) var answerChoices: [Answer] = []
    @Published private(set) var progress: CGFloat = 0.00
    
    init() {
        Task.init{
            await fetchTrivia()
        }
    }
    
    func fetchTrivia() async {
        guard let url = URL(string: "https://opentdb.com/api.php?amount=10") else { fatalError("Missing URL") }
            
        let urlRequest = URLRequest(url: url)
        
        do {
            let (data, respone) = try await URLSession.shared.data(for: urlRequest)
            
            guard (respone as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data")}
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            let decodedData = try decoder.decode(Trivia.self, from: data)
            
            DispatchQueue.main.async {
                self.trivia = decodedData.results
                self.length = self.trivia.count
                self.setQuestion()
            }
            
        } catch {
            print("Error fetching trivia: \(error)")
        }
    }
    
    func goToNextQuestion() {
        if index + 1 < length {
            index += 1
            
            setQuestion()
            // Setting new question here.....
        } else {
            reachedEnd = true
        }
    }
    
    func setQuestion() {
        answerSelected = false
        progress = CGFloat(Double(index + 1) / Double(length) * 350)
        
        if index < length {
            let currentTriviaQuestion = trivia[index]
            question = currentTriviaQuestion.formatedQuestion
            
        }
    }
    
    func selectedAnswer(answer: Answer) {
        answerSelected = true
        if answer.isCorrect {
            
        }
    }
    
}
