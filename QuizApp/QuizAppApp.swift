//
//  QuizAppApp.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 7/7/22.
//

import SwiftUI
//import FirebaseCore

@main
struct QuizAppApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
         //   MainTabView()
         //   SwiftUIContentView(question: SwiftQuestion.allQuestions[0])
            //For speedcode firebase
            FirebaseQuizAppContentView()
            //MARK: simple quiz app
       //     QuizTestContentView()
       //     TriviaView()
//                .environmentObject(TriviaManager())
          //  QuestionView()
        //    TriviaContentView()
            //   PrimaryButton(text: "Next")
            //MARK: Preview for quizApp
          //  ContentView(gameManagerVM: GameManagerVM())
          //A  FirebaseApp.configure()
        }
    }
}
