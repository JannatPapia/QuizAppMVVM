//
//  Extension.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 9/7/22.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
