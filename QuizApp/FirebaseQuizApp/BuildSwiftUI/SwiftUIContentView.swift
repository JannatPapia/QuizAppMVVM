//
//  SwiftUIContentView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 15/7/22.
//

import SwiftUI

struct SwiftUIContentView: View {
    var body: some View {
        VStack {
                    Text("Quiz Time")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                    .padding()
             Text("Question 1 / 4")
                    .padding()
            Spacer()
             Text("What is 1 + 1?")
                   .font(.title)
                   .padding()
            Spacer()
            Spacer()
            HStack {
            Button(action: {
                print("You selected 1")
            }) {
                Text("Touch 1")
            }
            .padding()
            .border(Color.blue, width: 4)
            Button(action: {
                print("You selected 2")
            }) {
                Text("Touch 2")
            }
            .padding()
            .border(Color.blue, width: 4)
            
            Button(action: {
                print("You selected 3")
            }) {
                Text("Touch 3")
            }
            .padding()
            .border(Color.blue, width: 4)
            
            Button(action: {
                print("You selected 4")
            }) {
                Text("Touch 4")
            }
            .padding()
            .border(Color.blue, width: 4)
     //       .padding()
            }
        }
    }
}

struct SwiftUIContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIContentView()
    }
}
