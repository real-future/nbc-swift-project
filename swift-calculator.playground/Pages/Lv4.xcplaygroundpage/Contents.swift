
//계산기가 실행되었습니다.
let calculator = Calculator()


//🌟firstNumber와 secondNumber를 수정해보세요🌟
let addResult = calculator.calculate(AddOperation(), firstNumber: 5, secondNumber: 3)
let subtractResult = calculator.calculate(SubtractOperation(), firstNumber: 10, secondNumber: 4)
let multiplyResult = calculator.calculate(MultiplyOperation(), firstNumber: 2, secondNumber: 6)
let divideResult = calculator.calculate(DivideOperation(), firstNumber: 12, secondNumber: 0)


//------------------------------------------------------
//계산기 클래스 생성
class Calculator {
    func calculate(_ operation: Operation, firstNumber: Double, secondNumber: Double) -> Double {
        return operation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}


//------------------------------------------------------
//연산함수를 수행하는 클래스 생성
class Operation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return 0.0
    }
}

//------------------------------------------------------
//연산함수를 수행하는 Operation클래스를 상속받아 사칙연산 클래스를 구현
//override를 통해 사칙연산 함수 재정의

//더하기 연산을 하는 클래스
class AddOperation: Operation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

//빼기 연산을 하는 클래스
class SubtractOperation: Operation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

//곱셈 연산을 하는 클래스
class MultiplyOperation: Operation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

//나눗셈 연산을 하는 클래스
//추가로 나누는 값이 0일 때 nan을 반환하도록 구현하였습니다.
class DivideOperation: Operation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        
        guard secondNumber != 0 else {
            return Double.nan
        }
        return firstNumber / secondNumber
    }
}

//결과 출력 함수
print("addResult: \(addResult)")
print("subtractResult: \(subtractResult)")
print("multiplyResult: \(multiplyResult)")
print("divideResult: \(divideResult)")
