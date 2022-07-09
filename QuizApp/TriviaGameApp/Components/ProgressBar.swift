//
//  ProgressBar.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 9/7/22.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 5)
                .foregroundColor(Color.black.opacity(0.3))
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: progress, height: 5)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}
