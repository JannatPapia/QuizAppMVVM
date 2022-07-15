//
//  ControlsView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 15/7/22.
//

import SwiftUI

struct ControlsView: View {
    @State var name = ""
    var body: some View {
        VStack {
            Text("Controls")
                .font(.largeTitle)
                .padding()
            Text("Welcome \(name)!")
            Spacer()
            HStack {
                ForEach(0..<5) { _ in
                    Circle()
                }
            }
            Form {
                TextField("Nazmul...", text: $name )
            }
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
