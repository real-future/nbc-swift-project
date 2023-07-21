

//계산기가 실행되었습니다.
let calculator = Calculator()


//🌟firstNumber와 secondNumber를 수정해보세요🌟
let addResult = calculator.calculate(operation: "+", firstNumber: 5, secondNumber: 3)
let subtractResult = calculator.calculate(operation: "-", firstNumber: 10, secondNumber: 7)
let multiplyResult = calculator.calculate(operation: "*", firstNumber: 4, secondNumber: 6)
let divideResult = calculator.calculate(operation: "/", firstNumber: 12, secondNumber: 3)



//----------------------------------------------
//사칙연산을 하는 계산기 클래스
class Calculator {
    func calculate(operation: String, firstNumber: Double, secondNumber: Double) -> Double? {
        switch operation {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            guard secondNumber != 0 else { return Double.nan } //나누는 수가 0이면 nan(not a number) 반환합니다.
            return firstNumber / secondNumber
        default:
            return nil
        }
    }
}


//----------------------------------------------
//결과 프린트

if let addResult = addResult {
    print("addResult: \(addResult)")
}

if let subtractResult = subtractResult {
    print("subtractResult: \(subtractResult)")
}

if let multiplyResult = multiplyResult {
    print("multiplyResult: \(multiplyResult)")
}

if let divideResult = divideResult {
    print("divideResult: \(divideResult)")
}

