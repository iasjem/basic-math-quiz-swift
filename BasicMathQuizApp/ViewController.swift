import Foundation 

// MARK - Enumerations

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

// MARK - Properties

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

// MARK - Helpers

func isCorrectAnswer(answer: Int) -> Bool {
   if result == answer {
        return true
   }
   return false
}

// MARK - Alert Dialogs

func showQuestion() {
     print("\(firstNumber) \(operation.symbol()) \(secondNumber)")
}

func showResult()  {
    print( "The correct answer is \(result)")
    let message = isCorrectAnswer(answer: answer) ? "You got it right!" : "You got it wrong..."
    print(message)
}

func showAnswer() {
    print("Your answer is \(answer)")
}

// MARK - Initial set-up environment

// print("Test")

showQuestion()
showAnswer()
showResult()