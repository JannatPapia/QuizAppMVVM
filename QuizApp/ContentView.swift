//
//  ContentView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 7/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("image")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .ignoresSafeArea()
            
//            LinearGradient(colors: [.purple.opacity(0.4), .blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing)
  //              .ignoresSafeArea()
            
            VStack{
                Text("Animal Knowledge Quiz!")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(color: Color.black, radius: 2, x: 0, y: 3)
                    .padding()
                
                Text("My Question")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(color: Color.black, radius: 2, x: 0, y: 3)
                    .lineLimit(3)
                    .frame(width: UIScreen.main.bounds.size.width - 20, height: 60, alignment: .center)
                    .multilineTextAlignment(.center)
                
                    Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
