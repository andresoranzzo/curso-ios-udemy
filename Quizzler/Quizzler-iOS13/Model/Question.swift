//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by evo on 29/12/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answerList: [String]
    let correctAnswer: String

    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.answerList = a
        self.correctAnswer = correctAnswer
    }
}
