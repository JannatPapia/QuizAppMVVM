//
//  Answer.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 9/7/22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
