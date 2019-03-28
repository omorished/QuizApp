//
//  TextQuestionViewController.swift

import UIKit

class TextQuestion {
    
    enum QuestionType: String {
        
        case normal = "normal"
        case golden = "golden"
        case mercy = "mercy"
        
    }
    
    var questionText = ""
    var correctAnswer = ""
    var questionType = QuestionType.normal
    var wrongChoices  = [String]()
    var picked = false
    
    init(questionText : String , correctAnswer: String , questionType: QuestionType, wrongChoices : [String]) {
        self.questionText = questionText
        self.correctAnswer = correctAnswer
        self.questionType = questionType
        self.wrongChoices = wrongChoices
    }
    
    
}
