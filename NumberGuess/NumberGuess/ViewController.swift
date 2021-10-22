//
//  ViewController.swift
//  NumberGuess
//
//  Created by Fuchshuber Felix on 01.10.21.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        //TODO: disable butto when input = nil
        
        let guessNumber = model.compare(guessString: textField.text!)
        
        let text:String?
        
        switch model.compareGuess(guessNumber: guessNumber) {
        case -1:
            text = "Zu klein"
        case 1:
            text = "ZU groß"
        default:
            text = "You guessed it :)"
        }
        
        lable.text = text
        
        model.countOfTries += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int.random(in:
            0..<100)
        print("zu erratende:\(model.numberToGuess)")
        // Do any additional setup after loading the view.
    }
}
