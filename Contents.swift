import Foundation

enum EngineStatus{
    case on, off
}

enum WindowsStatus {
    case open, close
}

enum BodyAction {
    case upload, unload
}

enum BodyType {
    case truck, wagon, tipper
}

struct SportCar {
    let model: String
    let year: String
    let size: Double
    var engineStatus: EngineStatus
    var windowsStatus: WindowsStatus
    var freeSpace: UInt
    let horsePower: UInt
    let maxSpeed: Double
    
    mutating func engineAction(status: EngineStatus) {
        self.engineStatus = status
    }
    
    mutating func openWindow() {
        self.windowsStatus = .open
    }
    
    mutating func closeWindow() {
        self.windowsStatus = .close
    }
}

struct TrunkCar {
    let model: String
    let year: String
    let size: Double
    var engineStatus: EngineStatus
    var windowsStatus: WindowsStatus
    var freeSpace: UInt
    let bodyType: BodyType
    var bodyAction: BodyAction
}

var ferrari = SportCar(model: "f40", year: "1988", size: 120, engineStatus: .off, windowsStatus: .close, freeSpace: 120, horsePower: 478, maxSpeed: 324)

print(ferrari.engineStatus)
ferrari.engineAction(status: .on)
print(ferrari.engineStatus)

var lambo = SportCar(model: "aventador", year: "2016", size: 134, engineStatus: .off, windowsStatus: .close, freeSpace: 120, horsePower: 700, maxSpeed: 349.2)

print(lambo.windowsStatus)
lambo.openWindow()
print(lambo.windowsStatus)
