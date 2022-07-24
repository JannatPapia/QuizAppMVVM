//
//  QA.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 15/7/22.
//

import SwiftUI

// question Answer View...
struct QA: View {
    @Binding var correct: Int
    @Binding var wrong: Int
    @Binding var answered: Int
    var set: String
        var quizItem : [nazmul]
    @StateObject var data = DelegetStorage()
    //   @Published var data = fireQuestionViewModel()
    var body: some View {
        //
        ZStack {
            if data.questions.isEmpty {
                ProgressView()
            }
            else {
                
                VStack {
                    // Top Progress View...
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center),
                           content: {
                        
                        Capsule()
                            .fill(Color.gray.opacity(0.5))
                            .frame(height: 6)
                        
                        Capsule()
                            .fill(Color.green)
                            .frame(width: 100, height: 6)
                    })
                    .padding()
                    
                    // Correct and Wrong count....
                    HStack{
                        Label(
                            title: { Text(correct == 0 ? "" : "\(correct)")
                                    .font(.largeTitle)
                                    .foregroundColor(Color.black)
                            },
                            icon: {Image(systemName: "checkmark.circle")
                                    .font(.largeTitle)
                                    .foregroundColor(Color.green)
                            })
                        
                        Spacer()
                        
                        Label(
                            title: { Text(wrong == 0 ? "" : "\(wrong)")
                                    .font(.largeTitle)
                                    .foregroundColor(Color.black)
                            },
                            icon: {Image(systemName: "xmark.circle")
                                    .font(.largeTitle)
                                    .foregroundColor(Color.red)
                            })
                        
                    }
                    .padding()
                    
                    //  Spacer(minLength: 0)
                    
                    ZStack {
                        ForEach(data.questions.reversed().indices) { index in
                            
                            //View....
                            fireQuestionView(question: $data.questions[index], correct: $correct, wrong: $wrong, answered: $answered)
                        }
                    }
                    .padding()
                }
            }
        }
        //
        //        .onAppear(perform: {
        //            data.getQuestions(set : quizItem, gameLavel : "")
        //        })
        // fetching
        .onAppear(perform: {
            data.getQuestions(set: quizItem, gameLavel: "")
         //   data.loadData(set: "")
        })
        
        
    }
}
//struct QA_Previews: PreviewProvider {
//    static var previews: some View {
//        QA()
//    }
//}
