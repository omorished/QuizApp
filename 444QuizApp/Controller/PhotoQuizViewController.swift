
//  TextQuizViewController.swift

import UIKit
import SwiftyButton
import AVFoundation
import CountdownLabel




class PhotoQuizViewController: UIViewController, SoundStringStatus {
    
    //UI connections
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var timerLeftLabel: CountdownLabel!
    
    @IBOutlet weak var plusLabel: CountdownLabel!
    
    @IBOutlet weak var scoreLabel: CountdownLabel!
    
    @IBOutlet weak var questionTextLabel: UILabel!
    
    @IBOutlet weak var questionImage: UIImageView!
    
    @IBOutlet weak var heartImage1: UIImageView!
    @IBOutlet weak var heartImage2: UIImageView!
    @IBOutlet weak var heartImage3: UIImageView!
    
    @IBOutlet weak var btn1: PressableButton!
    @IBOutlet weak var btn2: PressableButton!
    @IBOutlet weak var btn3: PressableButton!
    @IBOutlet weak var btn4: PressableButton!
    
    @IBOutlet weak var settingsBtn: UIButton!
    @IBOutlet weak var homeBtn: PressableButton!
    @IBOutlet weak var soundBtn: PressableButton!
    
    @IBOutlet weak var questionTypeImge: UIImageView!
    
    @IBOutlet weak var goldenQuestionTypeImage: UIImageView!
    
    @IBOutlet weak var mercyQuestionTypeImage: UIImageView!
    
    //constants
    var soundState: String? //the value will pass from mainViewController
    var quizSongAudioPlayer = AVAudioPlayer()
    var timer = Timer()
    var photoQuestionArrayInstance = PhotoQuestionBank()
    var countdownTimer = 9
    var questionCounter = 0
    var numberOfArrayCounter = 0
    var score = 0
    var noHeartCounter = 0
    var settingsState = false
    var soundStatusDelegate: SoundStatusMethod?
    
    //now we have to store current buttons position so we can put them in the right position
    var homeBtnCenter: CGPoint!
    var soundBtnCenter: CGPoint!
    
    let settingsNotClickedImage: UIImage = UIImage(named: "settingsNotClicked")!
    let settingsClickedImage: UIImage = UIImage(named: "settingsClicked")!
    
    let unmuteImage: UIImage = UIImage(named: "unmute(settings)")!
    let muteImage: UIImage = UIImage(named: "mute(settings)")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //store current buttons position
        homeBtnCenter = homeBtn.center
        soundBtnCenter = soundBtn.center
        
        
        //.center means position
        // move settings buttons to the settingsBtn
        //hint in main.storyboard you have to make the settings button in the bottom so it is gonna be upper every elements
        homeBtn.center = settingsBtn.center
        soundBtn.center = settingsBtn.center
        
        
        
        
        //prepare quizSongAudioPlayer
        do {
            quizSongAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "quizMusic", ofType: "mp3")!))
        }
        catch {
            print(error)
        }
        quizSongAudioPlayer.prepareToPlay()
        
        //check soundState to play song
        if soundState! == "unmute" {
            soundBtn.setImage(unmuteImage, for: .normal)
            quizSongAudioPlayer.play()
        }
        else {
            soundBtn.setImage(muteImage, for: .normal)
            
        }
        
        
        timerLeftLabel.animationType = .Scale //countdown animation
        scoreLabel.animationType = .Scale
        plusLabel.animationType = .Evaporate
        
        
        // button1 style
        btn1.colors = .init(button: .gray, shadow: .darkGray)
        btn1.shadowHeight = 17
        btn1.cornerRadius = 8
        btn1.depth = 0.9
        
        // button2 style
        btn2.colors = .init(button: .gray, shadow: .darkGray)
        btn2.shadowHeight = 15
        btn2.cornerRadius = 8
        btn2.depth = 0.9
        
        // button3 style
        btn3.colors = .init(button: .gray, shadow: .darkGray)
        btn3.shadowHeight = 13
        btn3.cornerRadius = 8
        btn3.depth = 0.9
        
        // button4 style
        btn4.colors = .init(button: .gray, shadow: .darkGray)
        btn4.shadowHeight = 11
        btn4.cornerRadius = 8
        btn4.depth = 0.9
        
        
        
        //home button style
        homeBtn.colors = .init(button: .gray, shadow: .darkGray)
        homeBtn.cornerRadius = 40
        homeBtn.depth = 0.9
        
        
        
        //sound button style
        soundBtn.colors = .init(button: .gray, shadow: .darkGray)
        soundBtn.cornerRadius = 40
        soundBtn.depth = 0.9
        
        
        
        
        
        intializeUIToBeginTheGame()
        
        
        
        
    }
    
    //To hide status bar
    override var prefersStatusBarHidden: Bool {
        
        return true
    }
    
    
    func intializeUIToBeginTheGame() {
        
        //check soundState to play song / this code when you restart the game the audio not affected when it is playing
        if soundState! == "unmute" {
            quizSongAudioPlayer.play()
        }
        
        numberOfArrayCounter = Int(arc4random_uniform(9))
        scoreLabel.text = "0"
        heartImage1.image = UIImage(named: "heartImage")
        heartImage2.image = UIImage(named: "heartImage")
        heartImage3.image = UIImage(named: "heartImage")
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TextQuizViewController.whatIsHappiningAfterOneSecond), userInfo: nil, repeats: true)
        
        createNewQuestionAndFourChoices()
        
    }
    
    
    @objc func whatIsHappiningAfterOneSecond() {
        
        
        if countdownTimer != 0 {
            
            if countdownTimer < 11 && countdownTimer > 5 {
                
                progressBar.progressTintColor = UIColor.green
                progressBar.trackTintColor = UIColor.green
                
            }
                
            else if countdownTimer < 6 && countdownTimer > 2 {
                
                progressBar.progressTintColor = UIColor.yellow
                progressBar.trackTintColor = UIColor.yellow
                
                
            }
                
            else {
                
                progressBar.progressTintColor = UIColor.red
                progressBar.trackTintColor = UIColor.red
                
                
            }
            
            progressBar.frame.size.width = (view.frame.size.width/10) * CGFloat(countdownTimer)
            timerLeftLabel.text = String(countdownTimer)
            
            countdownTimer = countdownTimer - 1
        }
            
        else {
            timerLeftLabel.text = String(countdownTimer)
            progressBar.frame.size.width = 1
            
            showAlert()
        }
        
        plusLabel.text = ""
        
    }
    
    func countDownTimerMethod(){
        
        if timer.isValid == true {
            
            if questionCounter <= 5 && questionCounter >= 0 {
                
                countdownTimer = 10
                
            }
            else if questionCounter <= 10 && questionCounter > 5 {
                
                countdownTimer = 6
            }
            else if questionCounter <= 15 && questionCounter > 10 {
                
                countdownTimer = 5
            }
            else if questionCounter > 15 {
                
                countdownTimer = 4
            }
            
        }
        
    }
    
    func createNewQuestionAndFourChoices() {
        
        
        if photoQuestionArrayInstance.randomQuestionArray[questionCounter].questionType == .normal {
            
            goldenQuestionTypeImage.image = UIImage(named: "")
            mercyQuestionTypeImage.image = UIImage(named: "")
            
            // button1 style
             btn1.setTitleColor(UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0), for: .normal)
            btn1.colors = .init(button: .gray, shadow: .darkGray)
            btn1.shadowHeight = 20
            btn1.cornerRadius = 8
            btn1.depth = 0.9
            
            // button2 style
             btn2.setTitleColor(UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0), for: .normal)
            btn2.colors = .init(button: .gray, shadow: .darkGray)
            btn2.shadowHeight = 20
            btn2.cornerRadius = 8
            btn2.depth = 0.9
            
            // button3 style
             btn3.setTitleColor(UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0), for: .normal)
            btn3.colors = .init(button: .gray, shadow: .darkGray)
            btn3.shadowHeight = 20
            btn3.cornerRadius = 8
            btn3.depth = 0.9
            
            // button4 style
             btn4.setTitleColor(UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0), for: .normal)
            btn4.colors = .init(button: .gray, shadow: .darkGray)
            btn4.shadowHeight = 20
            btn4.cornerRadius = 8
            btn4.depth = 0.9
            
            
            creatQuestionAndFourButtonsChoicesUI()
            
        }
            
        else if photoQuestionArrayInstance.randomQuestionArray[questionCounter].questionType == .golden {
            
            
        goldenQuestionTypeImage.image = UIImage(named: "goldenQuestionImage")
        mercyQuestionTypeImage.image = UIImage(named: "")
            
           
            
            // button1 style
            btn1.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: .normal)
            btn1.colors = .init(button: UIColor(red:1.00, green:0.88, blue:0.00, alpha:1.0), shadow: UIColor(red:1.00, green:0.71, blue:0.00, alpha:1.0))
            btn1.shadowHeight = 20
            btn1.cornerRadius = 8
            btn1.depth = 0.9
            
            // button2 style
            btn2.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: .normal)
            btn2.colors = .init(button: UIColor(red:1.00, green:0.88, blue:0.00, alpha:1.0), shadow: UIColor(red:1.00, green:0.71, blue:0.00, alpha:1.0))
            btn2.shadowHeight = 20
            btn2.cornerRadius = 8
            btn2.depth = 0.9
            
            // button3 style
            btn3.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: .normal)
            btn3.colors = .init(button: UIColor(red:1.00, green:0.88, blue:0.00, alpha:1.0), shadow: UIColor(red:1.00, green:0.71, blue:0.00, alpha:1.0))
            btn3.shadowHeight = 20
            btn3.cornerRadius = 8
            btn3.depth = 0.9
            
            // button4 style
            btn4.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: .normal)
            btn4.colors = .init(button: UIColor(red:1.00, green:0.88, blue:0.00, alpha:1.0), shadow: UIColor(red:1.00, green:0.71, blue:0.00, alpha:1.0))
            btn4.shadowHeight = 20
            btn4.cornerRadius = 8
            btn4.depth = 0.9
            
            creatQuestionAndFourButtonsChoicesUI()
            
        }
        else if photoQuestionArrayInstance.randomQuestionArray[questionCounter].questionType == .mercy && noHeartCounter != 0 { //mercy question
            
            goldenQuestionTypeImage.image = UIImage(named: "")
            mercyQuestionTypeImage.image = UIImage(named: "heartImage")
            
            // button1 style
            btn1.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: .normal)
            btn1.colors = .init(button:UIColor(red:0.97, green:0.46, blue:0.48, alpha:1.0), shadow:UIColor(red:0.83, green:0.46, blue:0.47, alpha:1.0))
            btn1.shadowHeight = 20
            btn1.cornerRadius = 8
            btn1.depth = 0.9
            
            // button2 style
            btn2.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: .normal)
            btn2.colors = .init(button:UIColor(red:0.97, green:0.46, blue:0.48, alpha:1.0), shadow:UIColor(red:0.83, green:0.46, blue:0.47, alpha:1.0))
            btn2.shadowHeight = 20
            btn2.cornerRadius = 8
            btn2.depth = 0.9
            
            // button3 style
            btn3.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: .normal)
            btn3.colors = .init(button:UIColor(red:0.97, green:0.46, blue:0.48, alpha:1.0), shadow:UIColor(red:0.83, green:0.46, blue:0.47, alpha:1.0))
            btn3.shadowHeight = 20
            btn3.cornerRadius = 8
            btn3.depth = 0.9
            
            // button4 style
            btn4.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: .normal)
            btn4.colors = .init(button:UIColor(red:0.97, green:0.46, blue:0.48, alpha:1.0), shadow:UIColor(red:0.83, green:0.46, blue:0.47, alpha:1.0))
            btn4.shadowHeight = 20
            btn4.cornerRadius = 8
            btn4.depth = 0.9
            
            creatQuestionAndFourButtonsChoicesUI()
            
            }
        
        
        else {
            questionCounter = questionCounter + 1
            createNewQuestionAndFourChoices()
        }
        
        if questionCounter != 0 {
            countDownTimerMethod()
        }
        questionCounter = questionCounter + 1
        numberOfArrayCounter = ( numberOfArrayCounter + 1 ) % 10
        
        
        
    }
    @IBAction func fourButtonChoices(_ sender: PressableButton) {
        
        if sender.titleLabel?.text == photoQuestionArrayInstance.randomQuestionArray[questionCounter - 1].correctAnswer {
            
            if photoQuestionArrayInstance.randomQuestionArray[questionCounter - 1].questionType == .normal {
                
                plusLabel.text = "+1"
                score = score + 1
                scoreLabel.text = String(score)
            }
            else if photoQuestionArrayInstance.randomQuestionArray[questionCounter - 1].questionType == .golden {
                
                plusLabel.text = "+3"
                score = score + 3
                scoreLabel.text = String(score)
            }
            else {
                
                switch(noHeartCounter) {
                    
                case 1 : heartImage1.image = UIImage(named: "heartImage")
                noHeartCounter = noHeartCounter - 1
                    
                case 2 : heartImage2.image = UIImage(named: "heartImage")
                noHeartCounter = noHeartCounter - 1
                    
                default:
                    print("Ok")
                }
            }
            
        }
            
        else {
            
            switch (noHeartCounter) {
                
            case 0 : heartImage1.image = UIImage(named: "noHeartImage")
            noHeartCounter = noHeartCounter + 1
                
            case 1 : heartImage2.image = UIImage(named: "noHeartImage")
            noHeartCounter = noHeartCounter + 1
                
            case 2 : heartImage3.image = UIImage(named: "noHeartImage")
            noHeartCounter = noHeartCounter + 1
            showAlert()
                return
                
            default :
                print("finish")
                
            }
            
        }
        
        
        createNewQuestionAndFourChoices()
        
        
    }
    
    func showAlert() {
        
        timer.invalidate()
        
        //        let alert = UIAlertController(title: "Game Over!", message: "Your score: \(score)", preferredStyle: .alert)
        //
        //        let returnHomeAlertAction = UIAlertAction(title: "Return To The Main Screen", style: .default, handler: { (UIAlertAction) in
        //
        //            //            self.performSegue(withIdentifier: "returnToMainScreen", sender: self)
        //            self.dismiss(animated: true, completion: nil)
        
        performSegue(withIdentifier: "goToSummaryPage", sender: true)
        
        
        
        
        //        let restartAlertAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
        //
        //            self.restartGame()
        
        //        }
        
        //        alert.addAction(returnHomeAlertAction)
        //        alert.addAction(restartAlertAction)
        
        
        //        present(alert, animated: true, completion: nil)
        
    }
    
    func restartGame() {
        timer.invalidate()
        progressBar.progressTintColor = UIColor.green
        progressBar.trackTintColor = UIColor.green
        progressBar.frame.size.width = (view.frame.size.width/10) * CGFloat(10)
        countdownTimer = 9
        timerLeftLabel.text = "10"
        plusLabel.text = ""
        scoreLabel.text = ""
        score = 0
        noHeartCounter = 0
        questionCounter = 0
        quizSongAudioPlayer.stop()
        quizSongAudioPlayer.currentTime = 0 // to reset audio to 0 second
        
        photoQuestionArrayInstance = PhotoQuestionBank()
        
        intializeUIToBeginTheGame()
        
    }
    
    // buttons functions
    
    @IBAction func settingsBtnPressed(_ sender: UIButton) {
        
        animateSettings()
        
    }
    
    @IBAction func homeBtnPressed(_ sender: PressableButton) {
        
        animateSettings()
        
        soundStatusDelegate?.soundStatusIs(soundStatus: soundState!, Audio: quizSongAudioPlayer)
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func soundBtnPressed(_ sender: PressableButton) {
        
        if soundState! == "mute" {
            soundBtn.setImage(self.unmuteImage, for: .normal)
            soundState = "unmute"
            quizSongAudioPlayer.play()
        }
        else {
            soundBtn.setImage(self.muteImage, for: .normal)
            soundState = "mute"
            quizSongAudioPlayer.stop()
            quizSongAudioPlayer.currentTime = 0 // to reset audio to 0 second
        }
        
        animateSettings()
        
    }
    
    func animateSettings() {
        
        //expand buttons
        if settingsState == false {
            UIView.animate(withDuration: 0.8) {
                
                self.settingsState = true
                self.settingsBtn.setImage(self.settingsClickedImage, for: .normal)
                
                self.soundBtn.alpha = 1
                self.homeBtn.alpha = 1
                
            }
            UIView.animate(withDuration: 1) {
                
                self.soundBtn.center = self.soundBtnCenter
                self.homeBtn.center = self.homeBtnCenter
            }
            
        }
            // collapse buttons
        else {
            
            self.settingsState = false
            self.settingsBtn.setImage(self.settingsNotClickedImage, for: .normal)
            
            UIView.animate(withDuration: 0.8) {
                
                self.soundBtn.center = self.settingsBtn.center
                self.homeBtn.center = self.settingsBtn.center
                
            }
            UIView.animate(withDuration: 1) {
                self.soundBtn.alpha = 0
                self.homeBtn.alpha = 0
            }
            
            
        }
        
    }
    func creatQuestionAndFourButtonsChoicesUI() {
        
        questionTextLabel.text = photoQuestionArrayInstance.randomQuestionArray[questionCounter].questionText
        
        questionImage.image = UIImage(named: "\(photoQuestionArrayInstance.randomQuestionArray[questionCounter].imageName)")
        
        
        let btn1 = self.view.viewWithTag(photoQuestionArrayInstance.arrayOfNumbers[numberOfArrayCounter][0]) as? PressableButton
        let btn2 = self.view.viewWithTag(photoQuestionArrayInstance.arrayOfNumbers[numberOfArrayCounter][1]) as? PressableButton
        let btn3 = self.view.viewWithTag(photoQuestionArrayInstance.arrayOfNumbers[numberOfArrayCounter][2]) as? PressableButton
        let btn4 = self.view.viewWithTag(photoQuestionArrayInstance.arrayOfNumbers[numberOfArrayCounter][3]) as? PressableButton
        
        btn1?.setTitle(photoQuestionArrayInstance.randomQuestionArray[questionCounter].correctAnswer, for: .normal)
        btn2?.setTitle(photoQuestionArrayInstance.randomQuestionArray[questionCounter].wrongChoices[photoQuestionArrayInstance.arrayOfNumbers[numberOfArrayCounter][0]], for: .normal)
        
        
        btn3?.setTitle(photoQuestionArrayInstance.randomQuestionArray[questionCounter].wrongChoices[photoQuestionArrayInstance.arrayOfNumbers[numberOfArrayCounter][1]], for: .normal)
        
        btn4?.setTitle(photoQuestionArrayInstance.randomQuestionArray[questionCounter].wrongChoices[photoQuestionArrayInstance.arrayOfNumbers[numberOfArrayCounter][2]], for: .normal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        quizSongAudioPlayer.stop()

        if segue.identifier == "goToSummaryPage" {
            
            let destinationVC = segue.destination as! SummaryViewController
            destinationVC.soundState = self.soundState
            destinationVC.score = self.score
            
            destinationVC.soundStringStatusDelegate = self
            
            
        }
        
        
    }
    
    func soundStringStatus(soundStatus: String) {
        
        self.soundState = soundState!
        restartGame()
        
        
    }
    
}


//mercy Image size For TextQuiz
//X: 147 Y: 94 -- width: 80 height: 63
//golden image size for TextQuiz
//X: 140 Y: 89 -- width: 95 height: 93



//mercy Image size For PhotoQuiz
//X: 147 Y: 90 -- width: 80 height: 63
//golden image size for PhotoQuiz
//X: 140 Y: 78 -- width: 95 height: 93




