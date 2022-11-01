import UIKit

var number = 13195
var smallNumber = 2

for _ in 0...number {
    if smallNumber >= number {
        break
    } else if number % smallNumber == 0 {
        number = number / smallNumber
    } else {
        smallNumber = smallNumber + 1
    }
}

print ("largest prime factor of the number is \(number)")


