class Model {
    var numberToGuess = 0
    var countOfTries = 0
    
    func compareGuess(guessNumber:Int!) -> Int! {
        
        
        var result = 0
        
        if guessNumber < numberToGuess {
            result = -1
        }
        
        if guessNumber > numberToGuess {
            result = 1
        }
        
        print("numberToGuess: \(numberToGuess) guessNumber: \(guessNumber) result: \(result)")
        
        return result
        
    }
    
    func compare(guessString:String!) -> Int! {
        let guess = Int(guessString)
        
        print("guessString: \(guessString)")
        return compareGuess(guessNumber: guess)
    }
    
    func isValid(guess guessedString: String!) -> Bool {
        var result = true
        if let str = guessedString {
            if let number = Int(str) {
                if number > 0 && number > 100 {
                    result = true
                }
            
            }
            
        }
        return result
    }
}


