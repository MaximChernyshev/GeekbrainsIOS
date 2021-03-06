import Foundation

struct Queue<T> {
    private var elements: [T] = []
    
    mutating func push(_ element: T) {
        self.elements.append(element)
    }
    
    mutating func pop() -> T?  {
        if self.elements.isEmpty {
            return nil
        } else {
            return self.elements.removeFirst()
        }
    }
    
    mutating func filter(_ array: [T], predicate: (T) -> Bool) -> [T] {
        var tmpArray = [T]()
        for element in array {
            if predicate(element) {
                tmpArray.append(element)
            }
        }
        return tmpArray
    }
    
    subscript (index: UInt) -> T? {
        if self.elements.isEmpty || Int(index) > self.elements.count {
            return nil
        } else {
            return elements[Int(index)]
        }
    }
}

class Circle {
    var radius: Double
    func calculatePerimiter() -> Double {
        return 2.0 * Double.pi * radius
    }
    init(radius: Double) {
        self.radius = radius
    }
}

extension Circle: CustomStringConvertible {
    var description: String {
        return "Circle with radius = \(self.radius)"
    }
}

class Rectangle {
    var sideA: Double
    var sideB: Double
    func calculatePerimiter() -> Double {
        return sideA + sideB
    }
    init(sideA: Double, sideB: Double) {
        self.sideA = sideA
        self.sideB = sideB
    }
}

extension Rectangle: CustomStringConvertible {
    var description: String {
        return "Rectangle with side A = \(sideA) and side B = \(sideB)"
    }
}

var queueRectangle = Queue<Rectangle>()  // создаем стек типа Rectangle
var queueCircle = Queue<Circle>()       // создаем стек типа Circle
// добавляем элементы
queueRectangle.push(Rectangle(sideA: 10, sideB: 20))
queueRectangle.push(Rectangle(sideA: 2, sideB: 2))
queueCircle.push(Circle(radius: 5))
queueCircle.push(Circle(radius: 6))

print(queueCircle.pop()!)
print(queueCircle.pop()!)

var circleArray = [Circle(radius: 4), Circle(radius: 3), Circle(radius: 12), Circle(radius: 1)]

print(queueCircle.filter(circleArray) {$0.radius > 5})
print(queueRectangle[0])
print(queueRectangle[4])
