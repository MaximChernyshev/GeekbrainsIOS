import Foundation

enum Engine {
    case gas, diesel, electic
}

enum CarType {
    case sedan, universal, cabrio, truck, coupe, sportcar
}

enum EngineStatus{
    case on, off
}

enum WindowsStatus {
    case open, close
}

enum BodyAction {
    case upload, unload
}


class Car {
    let model: String
    let year: UInt
    let engine: Engine
    let type: CarType
    let horsepower: Double
    var engineStatus: EngineStatus
    
    init(model: String, year: UInt, engine: Engine, type: CarType, horsepower: Double) {
        self.model = model
        self.year = year
        self.engine = engine
        self.type = type
        self.horsepower = horsepower
        self.engineStatus = .off
    }
    
    func startEngine() {
        self.engineStatus = .on
        print("engine started")
    }
}

class TruckCar: Car {
    
    private var bodyAction: BodyAction
    
    override init(model: String, year: UInt, engine: Engine, type: CarType, horsepower: Double) {
        self.bodyAction = .upload
        super.init(model: model, year: year, engine: engine, type: type, horsepower: horsepower)
    }
    
    func unloadBody() {
        bodyAction = .unload
    }
    
    func uploadBody() {
        bodyAction = .upload
    }
    
    func isEngineStarted() -> Bool {
        if engineStatus == .on {
            return true
        }
        return false
    }
    
    override func startEngine() {
        if Int.random(in: 0..<4) == 2 {
            super.startEngine()
        } else {
            print("engine start failed...try one more time")
        }
    }
}

class SportCar: Car {
    let acceleration: Double
    
    init(model: String, year: UInt, engine: Engine, type: CarType, horsepower: Double, acceleration: Double) {
        self.acceleration = acceleration
        super.init(model: model, year: year, engine: engine, type: type, horsepower: horsepower)
    }
    
    override func startEngine() {
        super.startEngine()
        print("sport exaust noise")
    }
}

var truck = TruckCar(model: "MAN", year: 2008, engine: .diesel, type: .truck, horsepower: 567)
var bugatti = SportCar(model: "Veyron", year: 2010, engine: .gas, type: .coupe, horsepower: 1000.1, acceleration: 1.8)

truck.startEngine()
print("Truck engine is \(truck.engineStatus)")

if truck.isEngineStarted() {
    truck.unloadBody()
    print("Truck engine is \(truck.engineStatus)")
}

bugatti.startEngine()
print(bugatti.engineStatus)
print("Our Bugatti was made at \(bugatti.year)")
print("Bugatti Veyron runs 0 to 100 km/h at \(bugatti.acceleration) sec")

