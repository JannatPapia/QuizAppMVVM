//
//  QuizTestContentView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 12/7/22.
//

import SwiftUI

struct QuizTestContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to the quiz game")
                
                // Button to start the quiz
                NavigationLink(destination: Quiz1()) {
                    Text("START QUIZ")
                }
            }
            .navigationTitle("QUIZ example", displayMode: .inline)
        }
        
    }
}

struct QuizTestContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuizTestContentView()
    }
}
