//
//  QA.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 15/7/22.
//

import SwiftUI

// question Answer View...
struct QA: View {
    var body: some View {
       
        // Top Progress View...
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center),
               content: {
            
              Capsule()
                .fill(Color.gray.opacity(0.7))
                .frame(height: 6)
            
            Capsule()
                .fill(Color.green)
                .frame(width: 100, height: 6)
        })
        .padding()
        
        Spacer(minLength: 0)
    }
}

//struct QA_Previews: PreviewProvider {
//    static var previews: some View {
//        QA()
//    }
//}
