//
//  QuizGridView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 7/7/22.
//

import SwiftUI
import Foundation

struct OptionGridView: View {
    var columns: [GridItem] = Array(repeating: GridItem(.fixed(170), spacing: 0), count: 2)
    @State var quizRecord = GameManagerVM.quizData[0]
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(quizRecord.optionList) { quizOption in
         //   ForEach(GameManagerVM.quizData[0].optionList) { quizOption in
                OptionCardView(quizOption: quizOption)
                    .onTapGesture {
                        verifyAnswer(selectedOption: quizOption)
                    }
            }
        }
        
    }
    
     func verifyAnswer(selectedOption: QuizOption) {
        
        if let index = quizRecord.optionList.firstIndex(where: {$0.optionId == selectedOption.optionId}) {
        if selectedOption.optionId == GameManagerVM.quizData[0].answer {
            quizRecord.optionList[index].isMatched = true
            quizRecord.optionList[index].isSelected = true
        }
            else {
                quizRecord.optionList[index].isMatched = false
                quizRecord.optionList[index].isSelected = true
            }
        }
    }
}

//struct QuizGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuizGridView()
//    }
//}

struct OptionCardView: View {
    var quizOption: QuizOption
    var body: some View {
        VStack {
            if (quizOption.isMatched) && (quizOption.isSelected) {
                OptionStatusImageView(imageName: "checkmark")
                
            } else if (!(quizOption.isMatched) && (quizOption.isSelected)) {
                OptionStatusImageView(imageName: "xmark")
            } else {
                OptionView(quizOption: quizOption)
            }
        }
        .frame(width: 150, height: 150)
        .background(setBackgroundColor())
       // .background(Color.white)
        .cornerRadius(40)
    }
    
    func setBackgroundColor() -> Color {
        if (quizOption.isMatched) && (quizOption.isSelected) {
            return Color.green
        }
        else if (!(quizOption.isMatched) && (quizOption.isSelected)) {
            return Color.red
        }
        else {
            return Color.white
        }
    }
    
}


struct OptionView : View {
    var quizOption: QuizOption
    var body: some View {
        VStack {
            Text(quizOption.optionId)
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .frame(width: 50, height: 50)
                .background(quizOption.color.opacity(0.8))
                .foregroundColor(Color.white)
                .cornerRadius(25)
            
            Text(quizOption.option)
                .frame(width: 150, height: 38)
                .font(.system(size: 20, weight: .bold, design: .rounded))
        }
    }
}



struct OptionStatusImageView: View {
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(EdgeInsets(top: 40, leading: 40, bottom: 40, trailing: 40))
            .foregroundColor(Color.white)
    }
}










































