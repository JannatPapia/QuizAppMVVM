//
//  ControlsView.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 15/7/22.
//

import SwiftUI

struct ControlsView: View {
    @State var name = ""
    @State var shapeCount = 5
    var body: some View {
        VStack {
            Text("Controls")
                .font(.largeTitle)
                .padding()
            Text("Welcome \(name)!")
            Spacer()
            HStack {
                ForEach(0..<name.count, id: \.self) { _ in
            //    ForEach(0..<shapeCount, id: \.self) { _ in
                    Circle()
                        .foregroundColor(Color.green.opacity(0.3))
                }
            }
            Form {
                TextField("Nazmul...", text: $name )
                Stepper("Number of shapes \(shapeCount)", value: $shapeCount, in: 1...8)
            }
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
