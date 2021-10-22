//
//  ViewController.swift
//  NumberGuess
//
//  Created by Fuchshuber Felix on 01.10.21.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func editingChanged(_ sender: UITextField) {
        guessButton.isEnabled = model.isValid(guess: textField.text)
        
        print ("Text ist now\(sender.text)")
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        let guessNumber = model.compare(guessString: textField.text!)
        
        let text:String?
        
        switch model.compareGuess(guessNumber: guessNumber) {
        case -1:
            text = "Zu klein"
        case 1:
            text = "ZU groß"
        default:
            text = "You guessed it :) / tries:\(model.countOfTries)"
        }
        
        lable.text = text
        
        model.countOfTries += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int.random(in: 0..<100)
        print("zu erratende Zahl:\(model.numberToGuess)")
        // Do any additional setup after loading the view.
    }
}
