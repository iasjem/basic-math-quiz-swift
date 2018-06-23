import Foundation 

// MARK - Enums

// MARK - Functions
enum Operation {
    case Add
    case Subtract
    case Multiply
    case Divide
    
    func symbol() -> String {
        switch(self) {
            case .Add:
                return "+"
            case .Subtract:
                return "-"
            case .Multiply:
                return "*"
            case .Divide:
                return "/"
        }
    }

    func calculate(firstNumber: Int, secondNumber: Int) -> Int {
         switch(self) {
            case .Add:
               return firstNumber + secondNumber
            case .Subtract:
                return firstNumber - secondNumber
            case .Multiply:
                return firstNumber * secondNumber
            case .Divide:
                return firstNumber / secondNumber
        }
    }
}

var firstNumber: Int {
    return 20
}

var secondNumber: Int {
    return 2
}

var operation: Operation {
    return Operation.Divide
}

var result: Int {
    return operation.calculate(firstNumber: firstNumber , secondNumber: secondNumber)
}

var answer: Int {
    return 10
}
func isCorrectAnswer(answer: Int) -> Bool {
   if result == answer {
        return true
   }
   return false
}
// MARK - Initial set-up environment
print("Test")