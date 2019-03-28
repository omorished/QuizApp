//
//  ViewController.swift
//  444QuizApp
//
//  Created by Os! on 04/03/1440 AH.
//  Copyright © 1440 Os!. All rights reserved.
//

import UIKit
import SwiftyButton
import AVFoundation


class MainViewController: UIViewController, SoundStatusMethod {
  

    //UI connection
    @IBOutlet weak var textQuizBtn: PressableButton!
    @IBOutlet weak var photoQuizBtn: PressableButton!
    
    @IBOutlet weak var soundBtn: PressableButton!
    
    //constants
    var soundState : String? //this state to know if user clicked mute/unmute
    var buttonClickAudioPlayer = AVAudioPlayer()
    var quizSongAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if soundState == nil || soundState == "unmute" {
            
            soundState = "unmute"
            soundBtn.setImage(UIImage(named: "unmuteImage"), for: .normal)

        }
        else {
            soundState = "mute"
            soundBtn.setImage(UIImage(named: "muteImage"), for: .normal)
   
        }
      

        
        // text button style
        textQuizBtn.colors = .init(button: .gray, shadow: .darkGray)
        textQuizBtn.shadowHeight = 25
        textQuizBtn.cornerRadius = 8
        textQuizBtn.depth = 0.9
       
        //photo button style
        photoQuizBtn.colors = .init(button:UIColor(red:0.75, green:0.22, blue:0.17, alpha:1.0), shadow:UIColor(red:0.61, green:0.18, blue:0.17, alpha:1.0))
        photoQuizBtn.shadowHeight = 25
        photoQuizBtn.cornerRadius = 8
        photoQuizBtn.depth = 0.9
        
        //sound button style
        soundBtn.colors = .init(button: .gray, shadow: .darkGray)
        soundBtn.shadowHeight = 5
        soundBtn.cornerRadius = 40
        soundBtn.depth = 0.9
        
        //prepare buttonClickAudioPlayer
        do {
            buttonClickAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "buttonClick", ofType: "mp3")!))
        }
        catch {
            print(error)
        }
        buttonClickAudioPlayer.prepareToPlay()
        
  
        
    }
    
    //To hide status bar
    override var prefersStatusBarHidden: Bool {
        
        return true
    }
    
    //To change mute/unmute sound button image
    @IBAction func changeSoundbtnImage(_ sender: PressableButton) {
        

        if soundState == "unmute"{
            sender.setImage(UIImage(named: "muteImage"), for: .normal)
            soundState = "mute"
        }
        else {
            sender.setImage(UIImage(named: "unmuteImage"), for: .normal)
            soundState = "unmute"
            buttonClickAudioPlayer.play() //to play click sound

        }
    }
    
    //segue for goToTextQuiz
    @IBAction func textBtnClicked(_ sender: PressableButton) {

        if soundState == "unmute"{
            buttonClickAudioPlayer.play() //to play click sound
            
        }
       
        performSegue(withIdentifier: "goToTextQuiz", sender: self)
        
    }
    
    //segue for goToPhotoQuiz
    @IBAction func photoBtnClicked(_ sender: PressableButton) {
        
        if soundState == "unmute"{
            buttonClickAudioPlayer.play() //to play click sound
            
        }
        performSegue(withIdentifier: "goToPhotoQuiz", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToTextQuiz" {
            
            let destinationVC = segue.destination as! TextQuizViewController
            destinationVC.soundState = soundState
            
            destinationVC.soundStatusDelegate = self
        }
        else {
            
            let destinationVC = segue.destination as! PhotoQuizViewController

            destinationVC.soundState = soundState

            destinationVC.soundStatusDelegate = self
        }
        }
    
    
    // impelement protocol method
    func soundStatusIs(soundStatus: String, Audio: AVAudioPlayer) {
        
        self.soundState = soundStatus
        Audio.stop()
        if soundState == "mute" {
            
            soundBtn.setImage(UIImage(named: "muteImage"), for: .normal)
        }
        else {
            soundBtn.setImage(UIImage(named: "unmuteImage"), for: .normal)
        }
    }
    
    func soundStateIs(soundStatus: String) {
        
        self.soundState = soundStatus
        
        if soundState == "mute" {
            
            soundBtn.setImage(UIImage(named: "muteImage"), for: .normal)
        }
        else {
            soundBtn.setImage(UIImage(named: "unmuteImage"), for: .normal)
            }
        }
    }
    
    
    


