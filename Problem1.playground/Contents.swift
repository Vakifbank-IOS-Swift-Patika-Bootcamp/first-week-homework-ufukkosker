import UIKit

var total = 0

for index in 1..<1000 {
    if index % 3 == 0 || index % 5 == 0 {
        total = total + index
    }
}
print("total: \(total)")
    
