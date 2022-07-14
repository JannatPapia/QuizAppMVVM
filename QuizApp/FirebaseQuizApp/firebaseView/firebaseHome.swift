//
//  firebaseHome.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 14/7/22.
//

import SwiftUI

struct firebaseHome: View {
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
                  }
//                Text("Placeholder")
//                Text("Placeholder")
            }/*@END_MENU_TOKEN*/)
            
            Spacer(minLength: 0)
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
    }
}

//struct firebaseHome_Previews: PreviewProvider {
//    static var previews: some View {
//        firebaseHome()
//    }
//}
