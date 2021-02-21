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
    print("no solutions")
}

print(5 > 6)


//
