//
//  Quiz1.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 12/7/22.
//

import SwiftUI

//view for the quiz game
struct Quiz1: View {
    
    //number of question
    @State var i : Int = 0
    
    //var for thr score
    @State var score = 0
    @State private var showActionSheet = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            
            
            
            
            
                Circle()
             //       .trim(from: 0.0, to: min(CGFloat(gameManagerVM.progress),1.0))
                    .stroke(LinearGradient(colors: [.orange, .red],
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing),
                            style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                    .rotationEffect(Angle(degrees: 270))
              //      .animation(Animation.linear(duration: Double(gameManagerVM.maxProgress)),
                        //       value: gameManagerVM.progress)
          //      ReusebleText(text: String(gameManagerVM.progress), size: 30)
            
            
            
            
      //      image of the question
//                Image(myQuiz2[self.i].img! )
//                    .resizable()
//                    .scaledToFit()
//                    .padding(.horizontal)
            
            //if i < of question -> play Question
            if(self.i < myQuiz2.count){
                
                
                
                
                
//                Circle()
//                    .trim(from: 0.0, to: min(CGFloat(gameManagerVM.progress),1.0))
//                    .stroke(LinearGradient(colors: [.orange, .red],
//                                           startPoint: .topLeading,
//                                           endPoint: .bottomTrailing),
//                            style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
//                    .rotationEffect(Angle(degrees: 270))
//                    .animation(Animation.linear(duration: Double(gameManagerVM.maxProgress)),
//                               value: gameManagerVM.progress)
//                ReusebleText(text: String(gameManagerVM.progress), size: 30)
                
                
                
                
                //image of the question
//                Image(myQuiz2[self.i].img! )
//                    .resizable()
//                    .scaledToFit()
//                    .padding(.horizontal)
                
                //text of the question
                Text(myQuiz2[self.i].text!)
                
                //answer  0
                Button (action: {
                    self.buttonAction(n: 0)
                    self.showActionSheet = true
                  //  self.buttonAction(n: 0)
                }, label: {
                    Text(myQuiz2[self.i].answer[0])
                        .foregroundColor(Color.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2)
                        }
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz2.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet)}
                        ]
                    )
                }
                //answer 1
                
                Button (action: {
                    self.buttonAction(n: 1)
                    self.showActionSheet = true
                 //   self.buttonAction(n: 0)
                }, label: {
                    Text(myQuiz2[self.i].answer[1])
                        .foregroundColor(Color.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2)
                        }
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz2.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet)}
                        ]
                    )
                }
                // answer 2
                Button (action: {
                    self.buttonAction(n: 2)
                    self.showActionSheet = true
                 //   self.buttonAction(n: 2)
                }, label: {
                    Text(myQuiz2[self.i].answer[2])
                        .foregroundColor(Color.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2)
                        }
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz2.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet)}
                        ]
                    )
                }
                // answer 3
                Button (action: {
                    self.buttonAction(n: 3)
                    self.showActionSheet = true
                 //   self.buttonAction(n: 3)
                }, label: {
                    Text(myQuiz2[self.i].answer[3])
                        .foregroundColor(Color.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2)
                        }
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz2.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet)}
                        ]
                    )
                }
                
            }
            //after last question -> show final view with score
            else{
                FinalView(score: self.score)
            }
        }
        .padding(.horizontal)
    }
    
    //action of the buttons
    //n = answer [0,1,2,3]
    func buttonAction(n : Int) {
        //if answer is correct increment score
        if(myQuiz2[self.i].correct == n) {
            self.score = self.score + 1
        }
        //GO TO THE QUESTION
        self.i = self.i + 1
    }
}

struct Quiz1_Previews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}
