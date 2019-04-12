//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Alex Frosell on 12/04/2019.
//  Copyright © 2019 Alex Frosell. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    let images = ["ball1", "ball2", "ball3", "ball4", "ball5"];
    
    @IBOutlet weak var magicBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomImg();
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomImg();
        vibratePhone();
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomImg();
        vibratePhone();
    }
    
    func randomImg() {
        let randomNumber = Int.random(in: 0 ... 4);
        magicBallImage.image = UIImage(named: images[randomNumber]);
    }
    
    func vibratePhone() {
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
}

