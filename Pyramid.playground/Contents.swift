import UIKit



func createPyramid(starLine: Int) {
    for row in 1...starLine {
        for _ in 1...row {
            //Print'in otomatik olarak alt satıra inmesini engellemek için terminator paramatersini kullandım.
            print("*", terminator: "")
        }
        print("\n")
    }
}

createPyramid(starLine: 3)




