import Foundation

//Решение квадратного уравнения

let a: Double = 1.0
let b: Double = 6.0
let c: Double = -7.0

var x1, x2: Double
let disc: Double = pow(b, 2) - 4*a*c

if disc > 0 {
    x1 = (-b + sqrt(disc)) / (2 * a)
    x2 = (-b - sqrt(disc)) / (2 * a)
    
    print("x1 =", x1)
    print("x2 =", x2)
} else if disc == 0 {
    x1 = -b / 2*a
    print("x1,2 =", x1)
} else {
    print("no solutions)")
}

print()

//Задача про треугольник

let kat1: Double = 5
let kat2: Double = 12
var hypotenuse: Double = sqrt(pow(kat1, 2) + pow(kat2, 2))
var p = kat1 + kat2 + hypotenuse
var s = kat1 * kat2 / 2

print("Гипотенуза = \(hypotenuse)")
print("Периметр = \(p)")
print("Площадь = \(s)")


//Задача про вклад (*)

var sum: Double = 50000
let percent: Double = 7

for _ in 1...5 {
    sum = sum * (1 + percent/100)
}
print(sum)
