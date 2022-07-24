//
//  SwiftUIContentView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 15/7/22.
//

import SwiftUI

struct SwiftUIContentView: View {
    let question : SwiftQuestion
    
    @State var guessedIndex : Int? = nil
    //"What was the first computer bug?"
//    let possibleAnswers = [
//          "Fly",
//          "Moth",
//          "Ant",
//          "Beetle",
//    ]
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
            Text(question.questionText)
            // Text("What is 1 + 1?")
                   .font(.title)
                   .multilineTextAlignment(.center)
                   .padding()
            Spacer()
            Spacer()
            HStack {
                ForEach(question.possibleAnswers.indices) { index in
                    AnswerButton(text: question.possibleAnswers[index]) {
                        guessedIndex = index
                     //   print("New print location! ")
                    }
                        .background(colorForButton(at: index))
                        .disabled(guessedIndex != nil)
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
            if guessedIndex != nil {
            BottomText(str: "Next Question")
            }
        }
        .padding(.bottom)
        }
    }
    
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let guessedIndex = guessedIndex,  guessedIndex == buttonIndex else { return .clear }
        if guessedIndex == question.correctAnswerIndex {
            return .green
        }
            else {
            return .red
        }
    }
    
}

struct AnswerButton: View {
    let text: String
    let onClick : () -> Void
    var body: some View {
        Button(action: {
            onClick()
          //  print("You selected \(text)")
        }) {
            Text(text)
        }
        .padding()
        .border(Color.blue, width: 4)
    }
    
//    func colorForButton(at buttonIndex: Int) -> Color {
//        guard let guessedIndex = guessedIndex,  guessedIndex == buttonIndex else { return .clear }
//        if guessedIndex == question.correctAnswerIndex {
//            return .green
//        } else {
//            return .red
//        }
//    }
}


struct SwiftUIContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIContentView(question: SwiftQuestion.allQuestions[4])
            //    .preferredColorScheme(.dark)
    }
}
