

//계산기가 실행되었습니다.
let calculator = Calculator()


//🌟firstNumber와 secondNumber를 수정해보세요🌟
let addResult = calculator.calculate(operation: "+", firstNumber: 10, secondNumber: 2)
let subtractResult = calculator.calculate(operation: "-", firstNumber: 10, secondNumber: 2)
let multiplyResult = calculator.calculate(operation: "*", firstNumber: 10, secondNumber: 2)
let divideResult = calculator.calculate(operation: "/", firstNumber: 10, secondNumber: 2)
let remainderResult = calculator.calculate(operation: "%", firstNumber: 10, secondNumber: 2)


//----------------------------------------------
//사칙연산을 하는 계산기 클래스
class Calculator {
    func calculate(operation: String, firstNumber: Double, secondNumber: Double) -> Double? {
        switch operation {
        case "+":
            let result = firstNumber + secondNumber
            print("addResult: \(result)")
            return result
        case "-":
            let result = firstNumber - secondNumber
            print("subtractResult: \(result)")
            return result
        case "*":
            let result = firstNumber * secondNumber
            print("multiplyResult: \(result)")
            return result
        case "/":
            guard secondNumber != 0 else {
                return nil
            }
            let result = firstNumber / secondNumber
            print("divideResult: \(result)")
            return result
        case "%":
            guard firstNumber.truncatingRemainder(dividingBy: 1) == 0 && secondNumber.truncatingRemainder(dividingBy: 1) == 0 else {
                return nil
            }
            let result = firstNumber.truncatingRemainder(dividingBy: secondNumber)
            print("remainderResult: \(result)")
            return result
        default:
            return nil
        }
    }
}



