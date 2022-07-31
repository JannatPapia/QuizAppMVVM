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
        var quizItem : [Qustion]
    @ObservedObject var delegetStorage =  DelegetStorage()
    @StateObject var data = fireQuestionViewModel()
    
    @Environment(\.presentationMode) var present
    
    //   @Published var data = fireQuestionViewModel()
    var body: some View {
        //
        ZStack {
            if data.questions.isEmpty {
                ProgressView()
            }
            else {
                if answered == data.questions.count {
                    VStack(spacing: 25) {
                        Image("trophy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 250)
                        
                        Text("Well Done !!!")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        // Score and Back Home Button...
                        
                        HStack(spacing: 15) {
                            Image(systemName: "checkmark")
                                .font(.largeTitle)
                                .foregroundColor(.green)
                            
                            Text("\(correct)")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            
                            Image(systemName: "xmark")
                                .font(.largeTitle)
                                .foregroundColor(.green)
                                .padding(.leading)
                            
                            Text("\(wrong)")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            
                        }
                        
                        Button(action: {
                            // closing sheet....
                            present.wrappedValue.dismiss()
                        }, label: {
                            Text("GoTo Home")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 150)
                                .background(Color.blue)
                                .cornerRadius(15)
                        })

                        
                    }
                }else {
                VStack {
                    // Top Progress View...
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center),
                           content: {
                        
                        Capsule()
                            .fill(Color.gray.opacity(0.5))
                            .frame(height: 6)
                        
                        Capsule()
                            .fill(Color.green)
                            .frame(width: progress(), height: 6)
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
                            
                            // if current question is completed means moving away...
                                .offset(x: data.questions[index].completed ? 1000 : 0)
                                .rotationEffect(.init(degrees: data.questions[index].completed ? 10 : 0))
                        }
                    }
                    .padding()
                }
                }
            }
        }
        //
        //        .onAppear(perform: {
        //            data.getQuestions(set : quizItem, gameLavel : "")
        //        })
        // fetching
        .onAppear(perform: {
          //  data.loadData(set: "")
            delegetStorage.getQuestions(set : quizItem, gameLavel : "")
        })
        
        
    }
    // progress
    
    func progress() -> CGFloat {
        
        let fraction = CGFloat(answered) / CGFloat(data.questions.count)
        
        let width = UIScreen.main.bounds.width - 30
        
        return fraction * width
    }
}
//struct QA_Previews: PreviewProvider {
//    static var previews: some View {
//        QA()
//    }
//}
