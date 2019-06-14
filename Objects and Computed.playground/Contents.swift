//: A UIKit based Playground for presenting user interface
// Andrew Bui
// IOS APP DEV 2
  
import UIKit
import PlaygroundSupport

    class Dog
    {
        var name: String
        var owner: String
        var age: Int
        var dogTag: String
        {
            get
            {
                return "If lost, call" + owner
            }
        }
        
        init(name: String, owner: String, age: Int)
        {
            self.name = name
            self.owner = owner
            self.age = age
        }
        func bark()
        {
            print("woof")
        }
    }

    let puppy = Dog(name: "Orion", owner: "Shawn", age: 1)
    puppy.bark()
    print(puppy.dogTag)



