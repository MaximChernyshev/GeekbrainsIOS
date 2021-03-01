import Foundation

enum EngineStatus{
    case on, off
}

enum Engine {
    case gas, diesel, electic
}

enum CarType {
    case sedan, universal, cabrio, truck, coupe, sportcar
}

enum WindowsStatus {
    case open, closed
}

protocol Car {
    var model: String { get }
    var year: UInt { get }
    var engine: Engine { get }
    var type: CarType { get }
    var horsepower: Double { get }
    var engineStatus: EngineStatus { get set }
    var windowStatus: WindowsStatus { get set }
    

}

extension Car {
    
    mutating func changeEngineStatus(engineStastus: EngineStatus)  {
        engineStatus = engineStastus
        print("Engine is \(engineStatus)")
    }
    
    mutating func windowAction(windowStatus: WindowsStatus) {
        self.windowStatus = windowStatus
        print("windows are \(windowStatus)")
    }
}

class SportCar : Car {
    let model: String
    let year: UInt
    let engine: Engine
    let type: CarType
    let horsepower: Double
    var engineStatus: EngineStatus = .off
    var windowStatus: WindowsStatus = .closed
    
    private let acceleration: Double
    
    init(model: String, year: UInt, engine: Engine, type: CarType, horsepower: Double, acceleration: Double) {
        self.model = model
        self.year = year
        self.engine = engine
        self.type = type
        self.horsepower = horsepower
        self.acceleration = acceleration
    }
    
    func accelerate() {
        print("\(model) runs 0-100 km/h in \(acceleration) sec")
    }
}

class TruckCar : Car {
    let model: String
    let year: UInt
    let engine: Engine
    let type: CarType
    let horsepower: Double
    var engineStatus: EngineStatus = .off
    var windowStatus: WindowsStatus = .closed
    
    private let bodysize: Double
    
    init(model: String, year: UInt, engine: Engine, type: CarType, horsepower: Double, bodysize: Double) {
        self.model = model
        self.year = year
        self.engine = engine
        self.type = type
        self.horsepower = horsepower
        self.bodysize = bodysize
    }
    
    func checkBodySize() {
        print("\(model) has body \(bodysize) liters")
    }
}

extension SportCar:CustomStringConvertible {
    var description: String {
        return "Sportcar \(model) was built in \(year) has \(horsepower) HP and accelerates 0-100 in \(acceleration)"
    }
}

extension TruckCar: CustomStringConvertible {
    var description: String {
        return "Truck \(model) was built in \(year) has \(horsepower) HP and has body \(bodysize) litres"
    }
}

var ferrari = SportCar(model: "ferrari enzo", year: 2001, engine: .gas, type: .coupe, horsepower: 680, acceleration: 3.4)
ferrari.changeEngineStatus(engineStastus: .on)
ferrari.windowAction(windowStatus: .open)
ferrari.windowAction(windowStatus: .closed)
ferrari.accelerate()
print(ferrari)

var fura = TruckCar(model: "Volvo", year: 2021, engine: .diesel, type: .truck, horsepower: 1000.1, bodysize: 3000)
fura.engineStatus
fura.changeEngineStatus(engineStastus: .on)
fura.engineStatus

fura.checkBodySize()

print(fura)
