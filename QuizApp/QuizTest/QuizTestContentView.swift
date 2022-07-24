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
            ZStack {
                
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .ignoresSafeArea()
                
            VStack(spacing: 20) {
                Text("Welcome to the quiz game")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(color: Color.black, radius: 2, x: 0, y: 3)
                //    .font(.largeTitle)
                 //   .foregroundColor(Color.white)
                
                // Button to start the quiz
                NavigationLink(destination: Quiz1()) {
                    Text("START QUIZ")
                }
                HStack{
                    //MARK: Display your score
                    Text("Last score : \(self.score) / \(myQuiz2.count)")
                        .onAppear(){  // refresh score
                            self.score = LoadScore(quiz: "myQuiz2")
                            //    .foregroundColor(Color.white)
                        }
                }
            }
            .navigationBarTitle("QUIZ example", displayMode: .inline)
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .shadow(color: Color.black, radius: 2, x: 0, y: 3)
     
            
                
        //    .foregroundColor(Color.white)
          // .background(Color.green.opacity(0.5))
         //   Color.red
        }
        }
   //     Color.green
        //.background(Color.green.opacity(0.5))
    }
}

struct QuizTestContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuizTestContentView()
    }
}
