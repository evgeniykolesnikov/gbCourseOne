import Foundation

//exercise 1
//Общий вид квадратного уровнения
//a*(x*x)+b*x+c=0
// Ver 1

print("Exercise 1 ver1")
print("Пример для квадратного уровнения 5*(x*x)-14+17=0")

let a: Double = 5
let b: Double = -14
let c: Double = 17
let x1: Double
let x2: Double
let d: Double = pow(b,2) - 4 * a * c

if d < 0 {
    print("Нет корней")
}
else{
    if d > 0 {
        x1 = ( -1 * b + sqrt(d)) / (2 * a)
        x2 = ( -1 * b - sqrt(d)) / (2 * a)
        print("Первый корень =", x1)
        print("Второй корень =", x2)
    }
    else {
        x1 = ((-b)/(2 * a))
        print(x1)
    }
}

// Ver 2
print("Exercise 1 ver2")
print("Пример для квадратного уровнения 2*(x^2)+5*x-3=0")

let firstCoefficient: Double = 2 //a
let secondCoefficient: Double = 5 //b
let freeMember: Double = -3 //c
let unknownOne: Double //x1
let unknownTwo: Double //x2
let discriminant = pow(secondCoefficient,2) - 4 * firstCoefficient * freeMember

if discriminant < 0 {
    print("Нет корней")
}
if discriminant > 0 {
    unknownOne = ((-secondCoefficient + sqrt(discriminant))/(2 * firstCoefficient))
    print("Первый корень =",unknownOne)
    unknownTwo = ((-secondCoefficient - sqrt(discriminant))/(2 * firstCoefficient))
    print("Второй корень =",unknownTwo)
} else {
    unknownOne = ((-secondCoefficient)/(2 * firstCoefficient))
}

//exercise 2

// Формула площади прямоугольного треугольника S=1/2(a×b)
// Формула пириметра прямоугольного треугольника P=a+b+c
// Формула гипотенузы прямоугольного треугольника c^2=a^2+b^2
// Катиты равны 3 и 4

print("Exercise 2")

let legOne: Double = 3
let legTwo: Double = 4
let hypotenuse: Double
let perimeter: Double
let square: Double

hypotenuse = sqrt(pow(legOne, 2) + pow(legTwo, 2))
print("Гипотенуза =",hypotenuse)

perimeter = legTwo + legOne + hypotenuse
print("Периметр =",perimeter)

square = legTwo * legOne / 2
print("Площадь =",square)

//exercise 3
print("exercise 3")

print("Введите сумму вклада")
let checkDeposit: String? = readLine()
var deposit = String()
if let corretDeposit = checkDeposit {
    deposit = corretDeposit
    print("Сумма вклада:\(deposit) руб.")
} else {
    print("Ошибка! Введите числовое значение вклада!")
}

print("Введите процент по вкладу")
let checkPercent: String? = readLine()
var percent = String()
if let corretPercent = checkPercent {
    percent = corretPercent
    print("Годовой процент по вкладу:\(percent)%")
} else {
    print("Ошибка! Введите числовое значение процента!")
}

var depositDouble: Double = 0
if let depositCheckDouble = Double(deposit){
    depositDouble = depositCheckDouble
}
var percentDouble: Double = 0
if let percentCheckDouble = Double(percent){
    percentDouble = percentCheckDouble
}

for _ in 1...5 {
    depositDouble = depositDouble + depositDouble * percentDouble / 100
}
print("Через пять лет на счету будет",Float(depositDouble))

// Вопросы:
// 1. Правильно ли я понял что лучше отображать переменные так как во второй версии первого задания?
// (Хотя здесь конечно не совсем корректно потому что вроде a,b,c общепрпизнанные обозначения)
// 2. Есть ли правила как оставлять комментарии или это не имеет особого регламента?
// (Имеется в виду до строк кода, на той же строке или после)
// 3. Имеет ли смысл в вычислении дискриминанта использовать функцию возведения в степень?
// Или в случаях где просто перемножить два числа не имеет смысла использовать функции?
