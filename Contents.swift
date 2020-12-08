import UIKit

enum engine{
    case start
    case stop
}
enum windows{
    case open
    case close
}
struct vehicle {
    let brand: String
    let release: Int
    var luggage: Int
    var engine : engine{
        willSet {
            if newValue == .start {
                print ("\(brand) engine on")
            } else {print("\(brand) engine off")}
        }
    }
    var windows : windows {
        willSet {
            if newValue == .open {
                print("\(brand) windows open")
            } else { print("\(brand) windows closed") }
        }
    }
    var filledLuggage: Int
}
var car = vehicle(brand: "Chevrolet", release: 2021, luggage: 100, engine: .start, windows: .close, filledLuggage: 50)
var truck = vehicle(brand: "Howo", release: 2018, luggage: 500, engine: .stop, windows: .open, filledLuggage: 500)
car.engine = .start
truck.windows = .close
print("Машина марки \(car.brand) выпущена в \(car.release).")
