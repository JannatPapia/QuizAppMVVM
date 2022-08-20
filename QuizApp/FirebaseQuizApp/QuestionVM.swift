////
////  QuestionVM.swift
////  QuizApp
////
////  Created by Jannatun Nahar Papia on 22/7/22.
////
import SwiftUI

struct HomeView : View {
//     @State var premiumPresent = false
//     @State var learnResurce = false
//     @State var lovePresent = false
//    @State var isShowQuiz : Bool = false
//    @State var correct = 0
//    @State var wrong = 0
//    @State var answered = 0
    @ObservedObject var viewModel = fireQuestionViewModel()

    func getDestination(itemText: String) -> AnyView {

        let currentRound =   HomeGrid.eachRoundQuiz * Int(viewModel.selectedIndexOfItem)!

        if viewModel.set.isQuiz{
            return AnyView(QA(set: viewModel.selectedIndexOfItem, quizItem: Array(viewModel.questions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound])))
        }else{
            return AnyView(QA(set: "", quizItem: []))
        }
    }
 
    var body: some View {
        VStack{
            ScrollView{
                ZStack{
                    VStack{
                        Spacer(minLength: 10)
                        firebaseHome(viewModel: viewModel)                        
                        Spacer(minLength: 0)
                            .padding()
                    }
                    .onLoad(perform: {
                        viewModel.set.isQuiz = true
                        viewModel.addItem()
                     //   viewModel.loadData(set: "")
                    })
                    
                    .fullScreenCover(isPresented: $viewModel.set.show, content:{
                        getDestination(itemText: viewModel.selectedIndexOfItem)
                    })
                }
            }
        }
    }
}
