import UIKit

func getCountofArrayElements<T>(values: [T]) {
    let countedSet = NSCountedSet(array: values)
    for value in countedSet {
        print("Element:", value, "count:", countedSet.count(for: value))
    }
}

getCountofArrayElements(values: ["a","b","b","c","d"
                                 ,12,2,3,4,4,4,
                                 "Ufuk","Oğuzhan","Ufuk",
                                 0.3,6.5,3.14,0.3,
                                 true,false,true,true
                                ])
