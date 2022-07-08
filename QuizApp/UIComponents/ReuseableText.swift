//
//  ReuseableText.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 7/7/22.
//

import SwiftUI
import Foundation

struct ReusebleText: View {
    var text: String
    var size: CGFloat
    var body: some View {
        
        Text(text)
         //   .font(.system(size: 30, weight: .bold, design: .rounded))
            .font(.system(size: size, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .shadow(color: Color.black, radius: 2, x: 0, y: 3)
       //     .padding()
    }
}

//struct ReuseableText: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct ReuseableText_Previews: PreviewProvider {
//    static var previews: some View {
//        ReuseableText()
//    }
//}
