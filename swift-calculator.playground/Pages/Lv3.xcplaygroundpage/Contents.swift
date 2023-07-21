
//계산기가 실행되었습니다.
let calculator = Calculator()


//🌟firstNumber와 secondNumber를 수정해보세요🌟
let addResult = calculator.calculateOperation("+", firstNumber: 5, secondNumber: 3)
let subtractResult = calculator.calculateOperation("-", firstNumber: 10, secondNumber: 4)
let multiplyResult = calculator.calculateOperation("*", firstNumber: 2, secondNumber: 6)
let divideResult = calculator.calculateOperation("/", firstNumber: 12, secondNumber: 0)

//------------------------------------------------------------

//사칙연산을 수행하는 계산기.
class Calculator {
    //사칙연산 클래스의 인스턴스를 저장하기 위한 변수
    var addOperation: AddOperation
    var subtractOperation: SubtractOperation
    var multiplyOperation: MultiplyOperation
    var divideOperation: DivideOperation
    
    init() {
        //AddOperation클래스의 인스턴스를 생성하고, 이를 addOperation 변수에 할당
        addOperation = AddOperation()
        subtractOperation = SubtractOperation()
        multiplyOperation = MultiplyOperation()
        divideOperation = DivideOperation()
    }
    
    //함수 선언
    func calculateOperation(_ operation: String, firstNumber: Double, secondNumber: Double) -> Double {
        switch operation {
        case "+":
            return addOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return subtractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return multiplyOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return divideOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            print("error")
            return 0
        }
    }
}

//------------------------------------------------------------
//사칙연산 클래스들

//더하기 연산을 하는 클래스
class AddOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber //리턴 타입이 선언 되어 있고, 함수 바디에 리턴문 하나만 있을 때 return 생략가능.
    }
}

//빼기 연산을 하는 클래스
class SubtractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

//곱셈 연산을 하는 클래스
class MultiplyOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

//나눗셈 연산을 하는 클래스
//추가로 나누는 값이 0일 때 nan을 반환하도록 구현하였습니다.
class DivideOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        guard secondNumber != 0 else {
            return Double.nan
        }
        return firstNumber / secondNumber
    }
}


print("addResult: \(addResult)")
print("subtractResult: \(subtractResult)")
print("multiplyResult: \(multiplyResult)")
print("divideResult: \(divideResult)")





