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

// MARK - Initial set-up environment
print("Test")