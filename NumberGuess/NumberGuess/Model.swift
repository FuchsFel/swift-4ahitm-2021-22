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
        
        return result
    }
    
    func compare(guessString:String!) -> Int! {
        let guess = Int(guessString)
        
        return compareGuess(guessNumber: guess)
    }
}


