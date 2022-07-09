//
//  TriviaContentView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 9/7/22.
//

import SwiftUI

struct TriviaContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()
//                    .font(.title)
//                    .fontWeight(.heavy)
//                    .foregroundColor(Color("AccentColor"))
                
                Text("Are you ready to test your trivia skills")
                    .foregroundColor(Color("AccentColor"))
            }
            
            PrimaryButton(text: "Let's go!")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color.yellow.opacity(0.03))
    }
}

struct TriviaContentView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaContentView()
    }
}
