import UIKit

func createCenterPyramid(starLine: Int) {
    for row in 1...starLine {
        for _ in 0...(starLine - row) {
            //Print'in otomatik olarak alt satıra inmesini engellemek için terminator paramatersini kullandım.
            print(" ", terminator: "")
        }
        
        for _ in 0..<(row) {
                print("* ", terminator: "")
        }
        print("\n")
    }
}

createCenterPyramid(starLine: 3)
