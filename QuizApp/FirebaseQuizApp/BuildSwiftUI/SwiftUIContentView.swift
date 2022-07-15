//
//  SwiftUIContentView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 15/7/22.
//

import SwiftUI

struct SwiftUIContentView: View {
    let question = "What was the first computer bug?"
    let possibleAnswers = [
          "Fly",
          "Moth",
          "Ant",
          "Beetle",
    ]
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.5, green: 0.3, blue: 0.5, opacity: 0.2)
                .ignoresSafeArea()
        VStack {
                    Text("Quiz Time")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                    .padding()
             Text("Question 1 / 4")
                    .padding()
            Spacer()
            Text(question)
            // Text("What is 1 + 1?")
                   .font(.title)
                   .padding()
            Spacer()
            Spacer()
            HStack {
                ForEach(possibleAnswers.indices) { index in
                    AnswerButton(text: possibleAnswers[index])
                }
//                AnswerButton(text: "1")
//                AnswerButton(text: "2")
//                AnswerButton(text: "3")
//                AnswerButton(text: "4")
//            Button(action: {
//                print("You selected 1")
//            }) {
//                Text("Touch 1")
//            }
//            .padding()
//            .border(Color.blue, width: 4)
//            Button(action: {
//                print("You selected 2")
//            }) {
//                Text("Touch 2")
//            }
//            .padding()
//            .border(Color.blue, width: 4)
//
//            Button(action: {
//                print("You selected 3")
//            }) {
//                Text("Touch 3")
//            }
//            .padding()
//            .border(Color.blue, width: 4)
//
//            Button(action: {
//                print("You selected 4")
//            }) {
//                Text("Touch 4")
//            }
//            .padding()
//            .border(Color.blue, width: 4)
     //       .padding()
            }
        }
        }
    }
}

struct AnswerButton: View {
    let text: String
    var body: some View {
        Button(action: {
            print("You selected \(text)")
        }) {
            Text(text)
        }
        .padding()
        .border(Color.blue, width: 4)
    }
}


struct SwiftUIContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIContentView()
            .preferredColorScheme(.dark)
    }
}
