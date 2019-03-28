
import Foundation


class PhotoQuestion{
    
    enum QuestionType: String {
        
        case normal = "normal"
        case golden = "golden"
        case mercy = "mercy"
        
    }
    
    var questionText = ""
    var imageName = ""
    var correctAnswer = ""
    var questionType = QuestionType.normal
    var wrongChoices  = [String]()
    var picked = false
    
    init(questionText : String, imageName: String , correctAnswer: String , questionType: QuestionType, wrongChoices : [String]) {
        
        self.questionText = questionText
        self.imageName = imageName
        self.correctAnswer = correctAnswer
        self.questionType =  questionType
        self.wrongChoices = wrongChoices
    }
    
}
