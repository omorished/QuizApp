//
//  SummaryViewController.swift

import UIKit
import SwiftyButton
import CountdownLabel
import AVFoundation


protocol SoundStringStatus { //this is for summary page
    
    func soundStringStatus(soundStatus: String)
}


class SummaryViewController: UIViewController {

    
    
    //connections
    
    @IBOutlet weak var scoreLabel: CountdownLabel!
    
    @IBOutlet weak var restartBtn: PressableButton!
    
    @IBOutlet weak var homeBtn: PressableButton!
    
    //constatnts
    var soundState: String?
    var score = 0
    var timer = Timer()
    var counter = 0
    var soundStringStatusDelegate: SoundStringStatus?
    
    var scoreEffectAudioPlayer = AVAudioPlayer()
    var lastEffectAudioPlayer = AVAudioPlayer()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(score)
        // Do any additional setup after loading the view.
        
        scoreLabel.animationType = .Scale
        
        // restart button style
        restartBtn.colors = .init(button: .gray, shadow: .darkGray)
        restartBtn.shadowHeight = 20
        restartBtn.cornerRadius = 8
        restartBtn.depth = 0.9
        
        //photo button style
        homeBtn.colors = .init(button:UIColor(red:0.75, green:0.22, blue:0.17, alpha:1.0), shadow:UIColor(red:0.61, green:0.18, blue:0.17, alpha:1.0))
        homeBtn.shadowHeight = 20
        homeBtn.cornerRadius = 8
        homeBtn.depth = 0.9
        
        
        do {
            scoreEffectAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "scoreEffect", ofType: "wav")!))
        }
        catch {
            print(error)
        }
        scoreEffectAudioPlayer.prepareToPlay()
        
        
        
        do {
            lastEffectAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "lastScoreEffect", ofType: "mp3")!))
        }
        catch {
            print(error)
        }
        lastEffectAudioPlayer.prepareToPlay()
        
 
     
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {

        
        timer = Timer.scheduledTimer(withTimeInterval: 0.35, repeats: true, block: { (Timer) in
            
            if self.soundState! == "unmute" {
            if self.score != self.counter {
                
                self.scoreLabel.text = "\(self.counter)"
                self.counter = self.counter + 1
                self.scoreEffectAudioPlayer.play()
         

            }
            else {
                self.scoreEffectAudioPlayer.stop()
                self.lastEffectAudioPlayer.play()
                self.scoreLabel.text = "\(self.counter)"
                self.timer.invalidate()
                }
            }
            
            else {
                
                if self.score != self.counter {
                    
                    self.scoreLabel.text = "\(self.counter)"
                    self.counter = self.counter + 1
                    
                }
                else {
                   
                    self.scoreLabel.text = "\(self.counter)"
                    self.timer.invalidate()
                }
            }
            
        })
            

    }
    
    //To hide status bar
    override var prefersStatusBarHidden: Bool {
        
        return true
    }
    
    
    @IBAction func restartBtnClicked(_ sender: PressableButton) {
        
        soundStringStatusDelegate!.soundStringStatus(soundStatus: self.soundState!)
        dismiss(animated: true) {
            
            
            
        }
    }
    
    
    @IBAction func homeBtnClicked(_ sender: PressableButton) {
        
        performSegue(withIdentifier: "goToHomePage", sender: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToHomePage" {
            
            let destinationVC = segue.destination as! MainViewController
            destinationVC.soundState = self.soundState!
        }
    }
 
    
    }
    

 

