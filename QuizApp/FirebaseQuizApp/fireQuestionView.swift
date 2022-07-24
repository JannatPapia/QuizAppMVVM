//
//  fireQuestionView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//

import SwiftUI

//class QuizQustionItemBackround: ObservableObject {
//    @Published var background = Color.black.opacity(0.8)
//}

struct fireQuestionView: View {
    
    @Binding var question: QuestionModelElement
    @Binding var correct: Int
    @Binding var wrong: Int
    @Binding var answered: Int
    // For checking......
   //    var isSubmitted = false
   //    var complete = false
    
    @State var selected = ""
    
    var body: some View {
        VStack(spacing: 22){
            Text(question.question!)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top, 25)
            
            Spacer(minLength: 0)
            
            //Options
            
            Button(action: {selected = question.optionA}, label: {
                Text(question.optionA)
                    .foregroundColor(Color.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.optionA), lineWidth: 1)
                    )
            })
            
            Button(action: {selected = question.optionB}, label: {
                Text(question.optionB)
                    .foregroundColor(Color.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.optionB), lineWidth: 1)
                    )
            })
            
            Button(action: {selected = question.optionC}, label: {
                Text(question.optionC)
                    .foregroundColor(Color.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.optionC), lineWidth: 1)
                    )
            })
            
            Button(action: {selected = question.optionD}, label: {
                Text(question.optionD)
                    .foregroundColor(Color.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.optionD), lineWidth: 1)
                    )
            })
            
            Spacer(minLength: 0)
            
            //Buttons
            
            HStack(spacing: 15) {
                Button(action: checkAns, label: {
                    Text("Submit")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                })
                
                // disabling
//                .disabled(question.isSubmitted ? true : false)
//                .opacity(question.completed ?  0.7 : 1)
                
                Button(action: {}, label: {
                    Text("Next")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                })
//                .disabled(question.isSubmitted ? true : false)
//                .opacity(question.completed ? 0.7 : 1)
            }
            .padding(.bottom)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
    }
    
    // highlighting answer
    func color(option: String) -> Color {
        if option == selected{
            return Color.blue
        }
        else {
            return Color.gray
        }
    }
    
    // check answer
    
    func checkAns() {
        if selected == question.answer {
            correct += 1
        } else {
            wrong += 1
        }
//        question.isSubmitted.toggle()
    }
    
}

//struct fireQuestionView_Previews: PreviewProvider {
//    static var previews: some View {
//        fireQuestionView()
//    }
//}
