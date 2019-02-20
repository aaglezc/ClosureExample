//
//  main.swift
//  ClosureExample
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

//use it in project   , display the order detail in order , by total or by name   or id
// is laike comparable interface in Java   (to ordr objects)
// use it in project to order customers by name or id
// you can use any type class

import Foundation

print("Closure Example")

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(names)


func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}

func forward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var x:(String,String) -> Bool = forward(_:_:)

let reversedNames0 = names.sorted(by: x)
print(reversedNames0)







var reversedNames1 = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]

print(reversedNames1)







var reversedNames2 = names.sorted(by: forward)
print(reversedNames2)


//-----------------

var reversedNames3 = names.sorted { (a: String, b:String) -> Bool in
    return a > b
}
print(reversedNames3)

var reversedNames4 = names.sorted { (a,b) -> Bool in
    return a < b
}
print(reversedNames4)

reversedNames4 = names.sorted { a,b -> Bool in
    return a < b
}
print(reversedNames4)


reversedNames4 = names.sorted { $0 < $1

}
print(reversedNames4)

reversedNames4 = names.sorted (by: <)
print(reversedNames4)

reversedNames4 = names.sorted (by: >)
print(reversedNames4)


