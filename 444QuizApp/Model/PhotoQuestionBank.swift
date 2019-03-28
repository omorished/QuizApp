

import Foundation

class PhotoQuestionBank {
    
    var originalPhotoQuestionBankArray = [PhotoQuestion]() //qestion Array
    var randomQuestionArray = [PhotoQuestion]()
    var arrayOfNumbers = [[Int]]()
    
    init(){
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "1", correctAnswer: " Bahrain", questionType: .normal, wrongChoices: ["Kuwait"," UAE"," Qatar","KSA"," Morocco"]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "2", correctAnswer: "Argentina", questionType: .normal, wrongChoices: ["Brazil"," Italy ","USA"," Spain ","Canada"]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "3", correctAnswer: " French ", questionType: .normal, wrongChoices: ["Spain "," Argentina","USA"," Italy ","Canada"]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "4", correctAnswer: "India", questionType: .normal, wrongChoices: ["Pakistan "," Iran "," Afghanistan"," Malaysia "," Singapore "]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "5", correctAnswer: " Brazil ", questionType: .normal, wrongChoices: ["Brazil"," Argentina","USA"," Romania "," Greece "]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "6", correctAnswer: " Germany ", questionType: .normal, wrongChoices: ["Brazil"," Argentina"," Bulgaria "," Spain "," Switzerland "]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "7", correctAnswer: " UK ", questionType: .normal, wrongChoices: ["Bulgaria "," Germany ","USA"," Spain ","Canada"]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "8", correctAnswer: " USA ", questionType: .normal, wrongChoices: ["Brazil"," Argentina"," Spain "," UK "," Romania "]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "9", correctAnswer: " Algeria ", questionType: .normal, wrongChoices: ["Bulgaria"," UAE"," Qatar","Tunisia"," Morocco"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "10", correctAnswer: " Kuwait ", questionType: .normal, wrongChoices: ["Tunisia "," UAE"," Qatar","KSA"," Morocco"]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "11", correctAnswer: " KSA ", questionType: .normal, wrongChoices: ["Tunisia "," UAE"," Qatar"," Kuwait "," Morocco"]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "12", correctAnswer: " Canada ", questionType: .normal, wrongChoices: ["Brazil"," Argentina","USA"," Romania "," Germany "]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country is this flag?", imageName: "13", correctAnswer: " UAE ", questionType: .normal, wrongChoices: ["Kuwait "," Argentina","USA","KSA","Canada"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this person?", imageName: "14", correctAnswer: " Newton", questionType: .normal, wrongChoices: ["Einstein"," Darwin"," Galilei"," Hawking"," Faraday"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "15", correctAnswer: " Suarez", questionType: .normal, wrongChoices: ["Özil"," Neymar"," Salah"," Hazard"," Pelé"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this person?", imageName: "16", correctAnswer: " Mandela ", questionType: .normal, wrongChoices: ["Guevara "," Marx "," Castro "," Kamenev "," Lenin "]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "17", correctAnswer: " Messi ", questionType: .normal, wrongChoices: ["Suarez "," Neymar"," Ronaldo "," Hazard"," Ramos "]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "18", correctAnswer: " Ramos ", questionType: .normal, wrongChoices: ["Buffon "," Neymar"," Modrić "," Hazard"," Suarez "]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of the tower?", imageName: "19", correctAnswer: " Khalifa ", questionType: .normal, wrongChoices: ["Sydney "," Milad "," Eiffel "," Europaturm "," Pisa "]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "20", correctAnswer: "Ronaldo", questionType: .normal, wrongChoices: ["Özil"," Neymar"," Salah"," Hazard"," Pelé"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this person?", imageName: "21", correctAnswer: " Dwayne", questionType: .normal, wrongChoices: ["Smith"," Brad"," Johnny"," Tom"," Clooney"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this person?", imageName: "22", correctAnswer: " Einstein ", questionType: .normal, wrongChoices: ["Newton","Darwin","Galilei"," Hawking"," Faraday"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "23", correctAnswer: " Neymar", questionType: .normal, wrongChoices: ["Suarez","Henry","Ronaldo","Mbappé"," Lukaku"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "24", correctAnswer: "Henry", questionType: .normal, wrongChoices:
            ["Suarez"," Zidane"," Salah"," Mbappé"," Lukaku"]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "25", correctAnswer: " Ibrahimović", questionType: .normal, wrongChoices:
            ["Özil"," Neymar"," Coutinho"," Ronaldo"," Ramos"]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " What is the name of the tower?", imageName: "26", correctAnswer: " Pisa ", questionType: .normal, wrongChoices:
            ["Sydney "," Milad "," Eiffel "," Europaturm "," Khalifa "]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "27", correctAnswer: " Modrić ", questionType: .normal, wrongChoices:
            ["Özil"," Ronaldo "," Coutinho "," Hazard"," Ramos"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "28", correctAnswer: " Raúl ", questionType: .normal, wrongChoices:
            ["Özil"," Ronaldo "," Suarez "," Hazard"," Modrić "]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "29", correctAnswer: "Ronaldo", questionType: .normal, wrongChoices:
            ["Özil"," Neymar"," Salah"," Hazard"," Pelé"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Which country map is this?", imageName: "30", correctAnswer: "KSA", questionType: .normal, wrongChoices:
            ["Kuwait"," UAE"," Qatar","Bahrain"," Morocco"]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "31", correctAnswer: " Salah ", questionType: .normal, wrongChoices:
            ["Özil"," Neymar"," Modrić "," Hazard"," Buffon "]))
        
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " What is the name of the tower?", imageName: "32", correctAnswer: " Eiffel ", questionType: .normal, wrongChoices:
            ["Sydney "," Milad "," Khalifa "," Europaturm"," Pisa"]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "33", correctAnswer: " Pique", questionType: .normal, wrongChoices:
            ["Özil"," Neymar"," Modrić "," Hazard","Buffon"]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "34", correctAnswer: " Vidal", questionType: .normal, wrongChoices:
            ["Coutinho"," Neymar"," Mbappé"," Lukaku"," Suarez"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this player?", imageName: "35", correctAnswer: " Zidane", questionType: .golden, wrongChoices:
            ["Suarez"," Neymar"," Messi"," Hazard"," Pelé"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " Who is this person?", imageName: "36", correctAnswer: " Muhammad", questionType: .mercy, wrongChoices:
            ["Tyson"," Wilder"," Robinson"," Leonard"," Hearns"]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this landmark?", imageName: "37", correctAnswer: "Statue of liberty", questionType: .normal, wrongChoices: ["HollyWood sign "," Eiffel Tower "," Colossume "," Big Ben","tower of pisa ", "Colofornia sign"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this landmark?", imageName: "38", correctAnswer: "Eiffel Tower", questionType: .normal, wrongChoices:
            ["Statue of liberty "," HollyWood sign "," Colossume "," Big Ben","tower of pisa "]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this landmark?", imageName: "39", correctAnswer: "Big Ben", questionType: .normal, wrongChoices:
            ["Statue of liberty "," HollyWood sign "," Eiffel Tower","Colossume "," tower of pisa "]))
        
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this landmark?", imageName: "40", correctAnswer: "tower of pisa", questionType: .normal, wrongChoices:
            ["Statue of liberty "," HollyWood sign "," Eiffel Tower","Colossume"," Big Ben "]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this landmark?", imageName: "41", correctAnswer: "Colossume", questionType: .mercy, wrongChoices:
            ["Statue of liberty "," HollyWood sign "," Eiffel Tower "," Big Ben"," tower of pisa "]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this landmark?", imageName: "42", correctAnswer: "HollyWood sign", questionType: .normal, wrongChoices:
            ["Statue of liberty "," Eiffel Tower "," Colossume "," Big Ben","tower of pisa "]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this painting? ", imageName: "43", correctAnswer: "Mona Lisa", questionType: .normal, wrongChoices:
            ["The starry night","The last supper"," The scream ","The eagle"]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this painting? ", imageName: "44", correctAnswer: "The starry night", questionType: .golden, wrongChoices:
            ["Mona lisa"," The last supper "," The scream","The eagle", "Moon Light"]))
        
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this painting", imageName: "45", correctAnswer: " The last supper ", questionType: .golden, wrongChoices:
            ["Mona Lisa","The starry night"," The scream "," The eagle ", "Moon light"]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "What is the name of this painting? ", imageName: "46", correctAnswer: "The scream", questionType: .mercy, wrongChoices: ["Mona Lisa","The starry night"," The eagle ","the last supper", "Moon light"]))
        
        
        
        
        
        
        
    originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "This programing language is ?", imageName:  "48", correctAnswer: "Java", questionType: .golden, wrongChoices:
        ["Python","PHP","Ruby","Swift","C++"]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "This programing language is ?", imageName: "49", correctAnswer: "Python", questionType: .golden, wrongChoices:
            ["Java ","PHP","Ruby","Swift","C++"]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "This PHP framework is ?", imageName: "50", correctAnswer: " Laravel ", questionType: .mercy, wrongChoices:
            ["Symfony "," CodeIgniter "," Yii 2 "," Phalcon ","Slim"]))
        
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: " This JavaScript framework is ?", imageName: "51", correctAnswer:
            "Vue.js", questionType: . mercy, wrongChoices:
            ["React.js"," Ember.js"," Backbone.js"," Aurelia.js"," Polymer"]))
        
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "This programing language is ?", imageName: "52", correctAnswer: " Swift ", questionType: .normal, wrongChoices:
            ["Python ","Kotlin","Ruby","Java","C++"]))
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "This programing language is ?", imageName: "53", correctAnswer: "Kotlin", questionType: .normal, wrongChoices:
            ["Python ","Java","Ruby","Swift","C++"]))
        originalPhotoQuestionBankArray.append(PhotoQuestion(questionText: "This IDE is ?", imageName: "54", correctAnswer: "android studio", questionType: .normal, wrongChoices: ["Eclipse","Netbeans","Atom","xcode","Arduino"]))
        
        ////////////////////////////////////////////////////////////
        
        generateRandomTextQuestionsArray()
        
        ///////////////////////////////////////////////////////////
        
        
        arrayOfNumbers = [ [3,1,2,4] , [1,3,4,2] , [3,4,2,1] , [2,1,4,3] ,[1,2,3,4] , [4,1,3,2] , [2,4,1,3] ,[2,3,1,4] ,[3,4,2,1] ,[4,1,2,3] ]
        
        
    }
    
    
    func placePickedToTrue() {
        
        for element in originalPhotoQuestionBankArray {
            
            element.picked = false
        }
    }
    
    
    func generateRandomTextQuestionsArray() {
        
        
        let originalPhotoQuestionArray = originalPhotoQuestionBankArray
        
        var randNum = 0
        
        while randomQuestionArray.count != originalPhotoQuestionArray.count   {
            
            
            randNum = Int (arc4random_uniform(UInt32(originalPhotoQuestionArray.count)))
            
            if originalPhotoQuestionArray[randNum].picked == false {
                
                randomQuestionArray.append(originalPhotoQuestionArray[randNum])
                
                originalPhotoQuestionArray[randNum].picked = true
            }
            
        }
        
       
       
    }
    

    
}

