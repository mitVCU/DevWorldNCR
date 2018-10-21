//
//  ThirdViewController.swift
//  DevWorldNCR
//
//  Created by Amin, Mit (CONT) on 10/21/18.
//  Copyright © 2018 Mit Amin. All rights reserved.
//

import UIKit
import AVFoundation


class ThirdViewController: UIViewController {

    @IBOutlet weak var third: UILabel!
    @IBOutlet weak var how: UILabel!
    @IBOutlet weak var why: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onClickTalk(_ sender: UIButton) {
        let utterance = AVSpeechUtterance(string: why.text!)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        let synth = AVSpeechSynthesizer()
        synth.speak(utterance);
    }
    

}
