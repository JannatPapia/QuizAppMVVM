//
//  ContentView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 7/7/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var gameManagerVM: GameManagerVM
    var body: some View {
        ZStack {
            Image("image")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .ignoresSafeArea()
            
            if (gameManagerVM.model.quizCompleted) {
                QuizCompletedView(gameManagerVM: gameManagerVM)
            }
            else {
            
//            LinearGradient(colors: [.purple.opacity(0.4), .blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing)
  //              .ignoresSafeArea()
            
            VStack{
                ReusebleText(text: "Animal Knowledge Quiz!", size: 30)
                    .padding()
                
  //              ReusebleText(text: "My Question", size: 25)
                ReusebleText(text: gameManagerVM.model.quizModel.question1, size: 25)
                    .lineLimit(3)
                    .frame(width: UIScreen.main.bounds.size.width - 20, height: 60, alignment: .center)
                    .multilineTextAlignment(.center)
//                Text("Animal Knowledge Quiz!")
//                    .font(.system(size: 30, weight: .bold, design: .rounded))
//                    .foregroundColor(.white)
//                    .shadow(color: Color.black, radius: 2, x: 0, y: 3)
//                    .padding()
                
//                Text("My Question")
//                    .font(.system(size: 25, weight: .bold, design: .rounded))
//                    .foregroundColor(.white)
//                    .shadow(color: Color.black, radius: 2, x: 0, y: 3)
//                    .lineLimit(3)
//                    .frame(width: UIScreen.main.bounds.size.width - 20, height: 60, alignment: .center)
//                    .multilineTextAlignment(.center)
                
                
                Spacer()
                ZStack {
                    Circle()
                        .stroke(lineWidth: 15)
                        .foregroundColor(.gray)
                        .opacity(0.3)
                    
                    
                    Circle()
                        .trim(from: 0.0, to: min(CGFloat(gameManagerVM.progress),1.0))
                        .stroke(LinearGradient(colors: [.orange, .red],
                                               startPoint: .topLeading,
                                               endPoint: .bottomTrailing),
                                style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                        .rotationEffect(Angle(degrees: 270))
                        .animation(Animation.linear(duration: Double(gameManagerVM.maxProgress)),
                                   value: gameManagerVM.progress)
                    ReusebleText(text: String(gameManagerVM.progress), size: 30)
                    
                }
                .frame(width: 150, height: 150)
                
                
                    Spacer()
                
                OptionGridView(gameManagerVM: gameManagerVM)
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(gameManagerVM: GameManagerVM())
    }
}



//struct ReusebleText: View {
//    var text: String
//    var size: Int
//    var body: some View {
//
//        Text("Animal Knowledge Quiz!")
//            .font(.system(size: 30, weight: .bold, design: .rounded))
//            .foregroundColor(.white)
//            .shadow(color: Color.black, radius: 2, x: 0, y: 3)
//            .padding()
//    }
//}
