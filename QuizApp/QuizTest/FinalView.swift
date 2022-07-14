//
//  FinalView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 14/7/22.
//

import SwiftUI

struct FinalView: View {
    var score : Int
    var body: some View {
        VStack{
            Text("Final Score 🥳 : \(score)")
                .onAppear(){
                    saveScore(quiz: "myQuiz2", score: self.score)
                }
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView(score: 1)
    }
}
