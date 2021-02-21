import Foundation

//Ex. 1

func checkEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

checkEven(5)
checkEven(6)

//Ex. 2

func deliNaTri(_ a: Int) -> Bool {
    return a % 3 == 0
}

deliNaTri(1)
deliNaTri(6)
deliNaTri(8)
deliNaTri(4)

var numbers: [Int] = []

//Ex. 3

for i in (0...100) {
    numbers.append(i)
}

print(numbers)

//Ex. 4

var tmp: [Int] = []
for i in numbers {
    if deliNaTri(numbers[i]) && !checkEven(numbers[i]) {
        tmp.append(numbers[i])
    }
}

numbers = tmp

//Ex. 5*

var fib: [Int] = [0, 1]

func fibbonaci(arr: [Int]) -> Void {
    arr.append(arr[arr.count - 1] + arr[arr.count - 2])
}
fibbonaci(arr: fib)
fibbonaci(arr: fib)
fibbonaci(arr: fib)

