//
//  ViewController.swift
//  Word Garden
//
//  Created by Mary Otto on 6/7/19.
//  Copyright © 2019 Mary Otto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessedLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        guessedLetterButton.isEnabled = false
    }
    
    func updateUIAfterGuess(){
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
//        print("Hey! The guessedLetterFieldChanged!!!")
        if let letterGuessed = guessedLetterField.text?.last {
            guessedLetterField.text = "\(letterGuessed)"
            guessedLetterButton.isEnabled = true
        } else {
            // disable the button if I don't have a single character in the guessedLetterField
            guessedLetterButton.isEnabled = false
        }
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        
//       print("In doneKeyPressed, is guessedLetterField the first responder before updateUIAfterGuess?")
        
        updateUIAfterGuess()
        
//         print("In doneKeyPressed, is guessedLetterField the first responder after updateUIAfterGuess?")
    }
    
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        
//         print("In guessLetterButtonPressed, is guessedLetterField the first responder before updateUIAfterGuess?")
        
       updateUIAfterGuess()
        
//         print("In guessLetterButtonPressed, is guessedLetterField the first responder after updateUIAfterGuess?")
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}

