//
//  firebaseHome.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 14/7/22.
//

import SwiftUI

struct firebaseHome: View {
    
    @State var show = false
    // Storing level for fetching questions....
    @State var set = "Round_1"
    
    //For analytic
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0
    
    var body: some View {
        VStack{
            
            Text("Revel Station")
                .font(.system(size: 38))
                .fontWeight(.heavy)
                .foregroundColor(.purple)
                .padding(.top)
            
            Text("Choose the way \nyou play !!!")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top, 8)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            
            // Level view
            
         //   LazyVGrid(columns: [GridItem(.fixed(20))], content: {
              LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 35, content: {
                  
                  // four levels..
                  ForEach(1...4, id: \.self) { index in
                      
                      VStack(spacing: 15) {
                          
                          Image("lv\(index)")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                              .frame(height: 150)
                          
                          Text("SwiftUI Quiz")
                              .font(.title2)
                              .fontWeight(.heavy)
                              .foregroundColor(Color.black)
                          
                          Text("Level \(index)")
                              .foregroundColor(Color.black)
                      }
                      .padding()
                      .frame(maxWidth: .infinity)
                      .background(Color.white)
                      .cornerRadius(15)
                      // opening QA view as sheet...
                      .onTapGesture {
                          set = "Round_\(index)"
                          show.toggle()
                      }
                  }
//                Text("Placeholder")
//                Text("Placeholder")
            }/*@END_MENU_TOKEN*/)
              .padding()
            
            Spacer(minLength: 0)
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
        .sheet(isPresented: $show, content: {
            QA(correct: $correct, wrong: $wrong)
        })
    }
}

//struct firebaseHome_Previews: PreviewProvider {
//    static var previews: some View {
//        firebaseHome()
//    }
//}
