//
//  MainTabView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 15/7/22.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            SwiftUIContentView(question: SwiftQuestion.allQuestions[0])
                .tabItem { Label("Game", systemImage: "gamecontroller")}
            ControlsView()
                .tabItem { Label("Controls", systemImage: "gear")}
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
