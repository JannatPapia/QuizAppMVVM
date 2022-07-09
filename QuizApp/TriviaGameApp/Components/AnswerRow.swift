//
//  AnswerRow.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 9/7/22.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State private var isSelected = false
    
    var green = Color.green
    var red = Color.red
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(isSelected ? Color("AccentColor") : Color.gray)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? green : red) : Color.gray, radius: 5, x: 0.5, y: 0.5)
  //      .shadow(color: Color.gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            isSelected = true
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrect: false))
    }
}
