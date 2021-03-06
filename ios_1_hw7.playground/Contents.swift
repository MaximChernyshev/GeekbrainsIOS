import Foundation

enum StartEngineError: Error {
    case noFuel
    case noKey
    case invalidTemp
}

enum AccelerateError: Error {
    case engineIsOff
}

class Engine {
    var fuelLevel: UInt
    var keyInCar: Bool
    var temperature: Double
    
    var engineStarted: Bool = false
    
    init(fuelLevel: UInt, keyInCar: Bool, temperature: Double) {
        self.fuelLevel = fuelLevel
        self.keyInCar = keyInCar
        self.temperature = temperature
    }
    
    func  start() -> (Bool?, StartEngineError?) {
        guard self.fuelLevel > 0 else {
            return (nil, StartEngineError.noFuel)
        }
        
        guard self.keyInCar == true else {
            return (nil, StartEngineError.noKey)
        }
        
        guard self.temperature > 50 || self.temperature < 50 else {
            return (nil, StartEngineError.invalidTemp)
        }
        
        engineStarted = true
        return (engineStarted, nil)
    }
    
    func go() throws -> Bool {
        guard self.engineStarted else {
            throw AccelerateError.engineIsOff
        }
        print("Engine started")
        return true
    }
}

var engine1 = Engine(fuelLevel: 10, keyInCar: false, temperature: 26)
var engine2 = Engine(fuelLevel: 0, keyInCar: true, temperature: 30)
var engine3 = Engine(fuelLevel: 2, keyInCar: true, temperature: 12)

engine1.start()
do {
    try engine1.go()
} catch AccelerateError.engineIsOff {
    print("Engine is off")
} catch let error {
    print(error.localizedDescription)
}

engine2.start()
do {
    try engine2.go()
} catch AccelerateError.engineIsOff {
    print("Engine is off")
} catch let error {
    print(error.localizedDescription)
}

engine3.start()
do {
    try engine3.go()
} catch AccelerateError.engineIsOff {
    print("Engine is off")
} catch let error {
    print(error.localizedDescription)
}
