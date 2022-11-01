import Foundation

var current = 0, previous = 1, sum = 0

while(current < 4000000) {
    current = current + previous
    previous = current - previous
    if(current % 2 == 0 ) {
        sum += current
    }
}
print("Sum is: \(sum)")

