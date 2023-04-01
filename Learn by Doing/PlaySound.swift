//
//  PlaySound.swift
//  Learn by Doing
//
//  Created by Ashish Yadav on 02/04/23.
//

import Foundation
import AVKit

// MARK: - AudioPlayer

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }
        catch {
            print("Could not find and play the sound file.")
        }
    }
}
