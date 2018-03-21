//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!
        
        do {
            
            player =  try AVAudioPlayer(contentsOf: soundURL)
            guard let player = player else { return }
            player.prepareToPlay()
            player.play()

        } catch let error as Error {

            print(error)

        }

    }
    
  

}

