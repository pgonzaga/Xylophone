//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {

        let noteName : String = "note\(sender.tag)"
        playSound(noteName: noteName)

    }

    func playSound(noteName : String) {

        let soundURL = Bundle.main.url(forResource: noteName, withExtension: "wav")!

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

