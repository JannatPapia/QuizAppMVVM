//
//  QuizTestContentView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 12/7/22.
//

import SwiftUI

struct QuizTestContentView: View {
    
    // var for the score
    @State var score = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to the quiz game")
                
                // Button to start the quiz
                NavigationLink(destination: Quiz1()) {
                    Text("START QUIZ")
                }
                HStack{
                    //MARK: Display your score
                    Text("Last score : \(self.score) / \(myQuiz2.count)")
                        .onAppear(){  // refresh score
                            self.score = LoadScore(quiz: "myQuiz2")
                        }
                }
            }
            .navigationBarTitle("QUIZ example", displayMode: .inline)
        }
        
    }
}

struct QuizTestContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuizTestContentView()
    }
}
