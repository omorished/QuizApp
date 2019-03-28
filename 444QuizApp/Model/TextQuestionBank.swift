//  TextQuestionBankViewController.swift



import UIKit


class TextQuestionBank {
    
    var originalTextQuestionBankArray = [TextQuestion]()
    var randomQuestionArray = [TextQuestion]()
    var arrayOfNumbers = [[Int]]()
    
    init() {
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "The minimum distance between the sun and the earth occurs on", correctAnswer: "January 4", questionType: .normal, wrongChoices: ["December 22", "June 21", "December 22", "October 5", "September 6", "March 10", "January 25"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "Other than Venezuela, which among the following from the South American countries is a member of OPEC", correctAnswer: "Ecuador", questionType: .normal, wrongChoices: ["Brazil", "Argentina", "Maxico", "Bolivia", "Colombia"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "Butterfly has ____ numbers of legs", correctAnswer: "six", questionType: .normal, wrongChoices: ["four", "five","seven","eight","nine","ten"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "The giant Panda belongs to the same family as that of", correctAnswer: "Bear", questionType: .normal, wrongChoices: ["Cat","Dog","Rabbit","Tiger","Lion","Duck"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "The minimum distance between the sun and the earth occurs on", correctAnswer: "January 4", questionType: .normal, wrongChoices: ["December 22", "June 21", "December 22", "October 5", "September 6", "March 10", "January 25"]))
        
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "What pets do more families own", correctAnswer: "Cats", questionType: .normal, wrongChoices: ["Dogs", "Horses", "Birds", "Chickens", "Ducks"]))
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "What is the fastest water anamial", correctAnswer: "Sailfish", questionType: .normal, wrongChoices: ["Porpoise", "Flying fish", "Tuna", "Duck beater","Crab"]))
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "The binary system uses powers of ", correctAnswer: "2", questionType: .normal, wrongChoices: ["4", "8", "16", "32", "64"]))
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "How many bits make a byte", correctAnswer: "8 bits", questionType: .normal, wrongChoices: ["4 bits", "2 bits", "16 bits", "32 bits", "64 bits"]))

        originalTextQuestionBankArray.append(TextQuestion(questionText: "What is 1004 divided by 2", correctAnswer: "502", questionType: .normal, wrongChoices: ["602", "702", "402", "302", "202"]))
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "106 × 106 – 94 × 94 = ", correctAnswer: "2400", questionType: .normal, wrongChoices: ["24", "240", "24000", "240000", "2424"]))
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "Which sea is to the west of Saudi Arabia", correctAnswer: "Red", questionType: .normal, wrongChoices: ["Aegean", "Bering", "Arabian", "White", "Blue"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "Which is the capital of Saudi Arabia", correctAnswer: "Riyadh", questionType: .golden, wrongChoices: ["Dhahran", "Jeddah", "Tabuk", "qassim", "Mecca"]))
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "Which is the currency of Saudi Arabia", correctAnswer: "Riyal", questionType: .mercy, wrongChoices:["Shekel", "Pound", "Ashrafi", "Dinar", "Dirham"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "How long is the Great wall of china? ", correctAnswer: "4000 Miles", questionType: .golden, wrongChoices:
            ["2000 Miles", "3000 Miles", "5000 Miles", "6000 Miles", "7000 Miles"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "Who invented Ferrari ", correctAnswer: "Enzo Ferrari", questionType: .mercy, wrongChoices:
            ["Mike Ferrari", "Steven Ferrari", "Luke Ferrari", "Nell Ferrari","Neck Ferrari"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "What colour do you get when you mix red and white ", correctAnswer: "Pink", questionType: .mercy, wrongChoices:
            ["Red", "Purple", "Blue", "Gray", "Black"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "Which of these chess figures is closely related to 'Bohemian Rhapsody'? ", correctAnswer: "Queen", questionType: .golden , wrongChoices: ["Pawn", "Bishop", "King", "Rooks", "Knight"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: " What is the largest planet in our Solar System? ", correctAnswer: "Jupiter", questionType: .normal, wrongChoices:
            ["Earth", "Saturn", "Uranus", "Pluto", "Mars"]))
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: " What is the color of Donald Duck's bowtie?  ", correctAnswer: "Red", questionType: .normal, wrongChoices:
            ["Yellow", "Blue", "Green", "Black", "grey"]))
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: "Which truck is produced by the Ford Motor Company?", correctAnswer: "F-150", questionType: .normal, wrongChoices:
            ["Rav4", "CR-V", "Silverado", "Youken", "GMC"]))
            
        originalTextQuestionBankArray.append(TextQuestion(questionText: "How many spaces are on a standard Monopoly board?", correctAnswer: "40", questionType: .normal, wrongChoices:
            ["50", "60", "30", "45", "55"]))
            
        originalTextQuestionBankArray.append(TextQuestion(questionText: "What is the name for the Jewish New Year?", correctAnswer: "Hanukkah", questionType: .normal, wrongChoices:
            ["Yom kippor", "Rosh hanna", "Kwanza", "Chrismas","Halloween"]))
            
        originalTextQuestionBankArray.append(TextQuestion(questionText: "Which country hosted the Summer Olympics in 2016?", correctAnswer: "Brazil", questionType: .normal, wrongChoices:
            ["China", "Spain", "Saudi Arabia", "Qatar", "UAE"]))
        
        
        
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: " Which one is PHP framework?", correctAnswer: "Laravel", questionType: .golden, wrongChoices:
            ["Angular ", " Reaction ", " Vue ", " Ember ", " Backbone "]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: " Programming language to develop IOS apps : ", correctAnswer: "Swift", questionType: .golden, wrongChoices:
            ["Java ", " Kotlin ", " PHP ", " Ruby ", " Python"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: " Programming language to develop android apps:", correctAnswer: "Kotlin", questionType: .mercy, wrongChoices:
            ["Swift ", " Ruby ", " C# ", " Perl ", " C "]))
        originalTextQuestionBankArray.append(TextQuestion(questionText: " Which programming language is not object oriented?", correctAnswer: "C", questionType: .mercy, wrongChoices:
            ["Swift", " Java ", " Kotlin ", " Python ", " Objective-C "]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: " Which one is JavaScript framework?", correctAnswer: " vue.js ", questionType: .normal, wrongChoices:
            ["Laravel ", " CodeIgniter ", " Yii 2 "," Phalcon ","Slim"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: " Who is the owner of Android?", correctAnswer: " Google ", questionType: .normal, wrongChoices:
            ["Amazon ", " Samsung", " Facebook "," Apple ","Nokia"]))
        
        originalTextQuestionBankArray.append(TextQuestion(questionText: " Who is the owner of Java?", correctAnswer: " Oracle ", questionType: .normal, wrongChoices:
            ["Amazon ", " IBM", " Facebook "," Apple "," Google "]))
        
        
        
        
            
        ///////////////////////////////////////////////////////////////
        
        generateRandomTextQuestionsArray()
        
        //////////////////////////////////////////////////////////////
        
        arrayOfNumbers = [ [3,1,2,4] , [1,3,4,2] , [3,4,2,1] , [2,1,4,3] ,[1,2,3,4] , [4,1,3,2] , [2,4,1,3] ,[2,3,1,4] ,[3,4,2,1] ,[4,1,2,3] ]
    }
    
    func placePickedToTrue() {
        
        for element in originalTextQuestionBankArray {
            
            element.picked = false
        }
    }
    
    
        func generateRandomTextQuestionsArray() {
            
            
            let originalTextQuestionArray = originalTextQuestionBankArray
            
            var randNum = 0
            
            while randomQuestionArray.count != originalTextQuestionArray.count   {
                
            
      randNum = Int (arc4random_uniform(UInt32(originalTextQuestionArray.count)))
                
                if originalTextQuestionArray[randNum].picked == false {
                    
                randomQuestionArray.append(originalTextQuestionArray[randNum])
                    
                originalTextQuestionArray[randNum].picked = true
                }
        
            }
            


        }
    


}
    

