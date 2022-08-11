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
    //    var quizItem : [nazmul]
    @StateObject var viewModel = fireQuestionViewModel()
    
    @Environment(\.presentationMode) var present
    
    //   @Published var data = fireQuestionViewModel()
    var body: some View {
        // MARK: question jodi empty thake tahole progress view show korbe
        ZStack {
            if viewModel.questions.isEmpty {
                ProgressView()
            }
            // MARK: Otherwise jei result ashbe je koyta hoyese sei result show korbe
            else {
                if answered == viewModel.questions.count {
                    VStack(spacing: 25) {
                        Image("trophy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 250)
                        
                        Text("Well Done !!!")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        //MARK: Score and Back Home Button...
                        
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
                    //MARK: Top Progress View...
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center),
                           content: {
                        
                        Capsule()
                            .fill(Color.gray.opacity(0.5))
                            .frame(height: 6)
                        
                        Capsule()
                            .fill(Color.green)
                            .frame(width: progress(), height: 6)
                    })
                    .padding([.leading,.trailing,.top],10)
                    
                    //MARK: Correct and Wrong count....
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
                    .padding([.leading,.trailing,.top],10)
                    
                    //  Spacer(minLength: 0)
                    
                    ZStack {
                        ForEach(viewModel.questions.reversed().indices) { index in
                            
                            // MARK: View question answer and options....
                            fireQuestionView(question: $viewModel.questions[index], correct: $correct, wrong: $wrong, answered: $answered)
                            
                            // if current question is completed means moving away...
                                .offset(x: viewModel.questions[index].completed ? 1000 : 0)
                                .rotationEffect(.init(degrees: viewModel.questions[index].completed ? 10 : 0))
                        }
                    }
                    .padding([.leading,.trailing],5)
                }
                }
            }
        }
        // fetching
        .onAppear(perform: {
            viewModel.loadData(set: "")
              })
    
        
    }
    // MARK: progress answer
    
    func progress() -> CGFloat {
        
        let fraction = CGFloat(answered) / CGFloat(viewModel.questions.count)
        
        let width = UIScreen.main.bounds.width - 30
        
        return fraction * width
    }
}
//struct QA_Previews: PreviewProvider {
//    static var previews: some View {
//        QA()
//    }
//}
