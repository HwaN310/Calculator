import Foundation

//더하기 클래스
class Add{
    func perform(_ num1: Double, _ num2: Double) -> Double{
        return num1+num2
    }
}

// 빼기 클래스
class Sub{
    func perform(_ num1: Double, _ num2: Double) -> Double{
        return num1 - num2
    }
}

// 곱하기 클래스
class Mul{
    func perform(_ num1: Double, _ num2: Double) -> Double{
        return num1 * num2
    }
}

// 나누기(몫, 나머지) 클래스
class Div{
    func perform(_ num1: Double, _ num2: Double) -> (Double,Double){
        let quotient = num1 / num2
        let remainder = num1.truncatingRemainder(dividingBy: num2)
        return (quotient, remainder)
    }
}

// 계산기 클래스 (연산 클래스 호출)
class Calculator{
    let addResult = Add()
    let subtractResult = Sub()
    let multiplayResult = Mul()
    let divideResult = Div()
    
    func calculate(_ num1: Double, _ num2: Double, operation: Div) -> (Double, Double){
        return operation.perform(num1, num2)
    }
}
let num1 = 10.0
let num2 = 3.0
let calculator = Calculator()
let sum = calculator.addResult.perform(num1, num2)
let minus = calculator.subtractResult.perform(num1, num2)
let (quotient, remainder) = calculator.calculate(num1, num2, operation: calculator.divideResult)

print(sum)
print(quotient, remainder)
