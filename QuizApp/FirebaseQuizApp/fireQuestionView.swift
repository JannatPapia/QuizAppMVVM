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
    
    @Binding var question: Qustion
    @Binding var correct: Int
    @Binding var wrong: Int
    @Binding var answered: Int
    
//    @State private var isSelected = false
    // For checking......
   //    var isSubmitted = false
   //    var complete = false
    
    @State var selected = ""
    
    var body: some View {
        VStack(spacing: 22){
            // FOR QUESTION....
            Text(question.question)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top, 25)
            
            Spacer(minLength: 0)
            
            //FOR OPTIONS....A
            
            Button(action: {selected = question.optionA}, label: {
                Text(question.optionA)
                    .foregroundColor(Color.black)
                    .padding([.horizontal,.vertical],5)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.optionA), lineWidth: 1)
                    )
            })
            
            //FOR OPTIONS....B
            
            Button(action: {selected = question.optionB}, label: {
                Text(question.optionB)
                    .foregroundColor(Color.black)
                    .padding([.horizontal,.vertical],5)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.optionB), lineWidth: 1)
                    )
            })
            
            //FOR OPTIONS....C
            
            Button(action: {selected = question.optionC}, label: {
                Text(question.optionC)
                    .foregroundColor(Color.black)
                    .padding([.horizontal,.vertical],5)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.optionC), lineWidth: 1)
                    )
            })
            
            //FOR OPTIONS....D
            
            Button(action: {selected = question.optionD}, label: {
                Text(question.optionD)
                    .foregroundColor(Color.black)
                    .padding([.horizontal,.vertical],5)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.optionD), lineWidth: 1)
                    )
            })
            
            Spacer(minLength: 0)
            
            //Buttons use for submitted answer And Next Question use with HStack...
            
            HStack(spacing: 15) {
                
            //    Buttons use for submitted answer
                
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
                .disabled(question.isSubmitted ? true : false)
                .opacity(question.isSubmitted ?  0.7 : 1)
                
                // For next question Button....
                
                Button(action: {
                    withAnimation{
                        question.completed.toggle()
                        answered += 1
                    }
                }, label: {
                    Text("Next")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                })
                .disabled(!question.isSubmitted ? true : false)
                .opacity(!question.isSubmitted ? 0.7 : 1)
            }
            .padding(.bottom)
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
    }
    
    //MARK: highlighting answer use color
    func color(option: String) -> Color {
        if option == selected{
        //    if selected == question.answer{
                //displaying if correct means green else red....
                if question.isSubmitted{
                    
                    if selected == question.answer{
                        
                        return Color.green
                    }
                    else {
                        return Color.red
                    }
            }
            else {
                return Color.blue
            }
        }
        else {
            
            // displying right if wrong selected
            if question.isSubmitted && option != selected {
                if question.answer == option{return Color.green}
            }
            return Color.gray
        }
    }
    
    //MARK: check right or wrong answer
    
    func checkAns() {
        if selected == question.answer {
            correct += 1
        } else {
            wrong += 1
        }
        question.isSubmitted.toggle()    
}
}
//struct fireQuestionView_Previews: PreviewProvider {
//    static var previews: some View {
//        fireQuestionView()
//    }
//}
