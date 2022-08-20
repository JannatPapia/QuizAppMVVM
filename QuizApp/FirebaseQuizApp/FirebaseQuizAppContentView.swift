//
//  FirebaseQuizAppContentView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 14/7/22.
//

import SwiftUI
import StoreKit

struct FirebaseQuizAppContentView: View {
    @StateObject var viewModel = fireQuestionViewModel()

    
    var body: some View {
        HomeView(viewModel: viewModel)
//            .onAppear(perform: {
//                  viewModel.getQuestions(set: quizItem , gameLavel : "")
//              })
       // firebaseHome(viewModel: viewModel)
    }
}

struct FirebaseQuizAppContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirebaseQuizAppContentView()
    }
}
