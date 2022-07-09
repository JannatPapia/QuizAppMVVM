//
//  QuizCompletedView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 8/7/22.
//

import SwiftUI
import Foundation

struct QuizCompletedView: View {
    var gameManagerVM : GameManagerVM
    var body: some View {
        VStack {
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color.yellow)
                .font(.system(size: 60))
                .padding()
            
            ReusebleText(text: gameManagerVM.model.quizWinningStatus ? "THAT'S A WRAP"
                         : "GAME OVER", size: 30)
                .padding()
            
            ReusebleText(text: gameManagerVM.model.quizWinningStatus ? "thank you for playing!!"
                         : "Better luck next time", size: 30)
            .padding()
            
            Button {
                gameManagerVM.restartGame()
            } label: {
                HStack {
                    Image(systemName: "play.fill")
                        .foregroundColor(Color.white)
                        .font(.system(size: 26))
                        .padding()
                    
                    Text("Play Again")
                        .foregroundColor(Color.white)
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                       // .foregroundColor(.purple.opacity(0.7))
                    //    .cornerRadius(30)
                }
            }
            .frame(width: 300, height: 60, alignment: .center)
            .background(Color.black.opacity(0.7))
   //         .background(Color.purple.opacity(0.7))
            .cornerRadius(30)
            
        }
    }
}

//struct QuizCompletedView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuizCompletedView()
//    }
//}
