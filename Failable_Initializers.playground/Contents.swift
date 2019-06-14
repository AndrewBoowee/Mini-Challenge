//: A UIKit based Playground for presenting user interface
// Andrew Bui
//IOS APP DEV 2

import UIKit
import PlaygroundSupport

struct MathOperation{
    var units: String
    var operation: (Double, Double) -> Double
    
    init? (units: String, operation: @escaping (Double, Double) -> Double)
    {
        if (units == "")
            {
                return nil
            }
            self.units = units
            self.operation = operation
    }
}

var testing = MathOperation(units: "", operation:
    {
        (x, y) in return x+y
    })

    if testing == nil
    {
        print("It failed!")
    }

    if let testing = testing
    {
        let add = testing.operation(12.5,22.4)
        let units = testing.units
        print("\(add) \(units)")
    }

    let multiply =
    {
        (a: Double, b: Double) in return a * b
    }

    func divide(i: Double, j: Double) -> Double
    {
            return i/j
    }

    var acc = MathOperation(units: "km/hr", operation: divide)

    if let acc = acc
    {
        let result = acc.operation(150.0, 2.0)
        let units = acc.units
        print("\(result) \(units)")
    }







