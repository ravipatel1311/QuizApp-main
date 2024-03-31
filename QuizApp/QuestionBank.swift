//
//  QuestionBank.swift
//  QuizApp
//
//  Created by user238852 on 3/20/24.
//

import Foundation

class QuestionBank {
    static let shared = QuestionBank()
    private init() {}
    
    var questions: [Question] = []
    
    func addQuestion(_ question: Question) {
        questions.append(question)
    }
}
