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
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            //if i < of question -> play Question
            if(self.i < myQuiz2.count){
                
                //image of the question
                Image(myQuiz2[self.i].img! )
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                
                //text of the question
                Text(myQuiz2[self.i].text!)
            }
        }
        .padding(.horizontal)
    }
}

struct Quiz1_Previews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}
