# First-Week-Homework

1- Palindrome. Verilen Stringin palindrome olup olmadığını kontrol eden bir fonksiyon yazınız.
```bash
var palindromeText: String = "küçük"

print("is palindrome: \(palindromeText.isPalindrome)")

extension String {
    var isPalindrome: Bool {
        return self == String(self.reversed())
    }
 }
```

2- Verilen bir array içerisindeki her bir elemanın sayısını veren bir fonksiyon yazınız.
```bash
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
```
3- "*" Karakterinden piramit oluşturan fonksiyonu yazınız. Parametre olarak kaç katlı olacağı alınsın.

Örn: Parametre 3 ise çıktı aşağıdaki şekilde olmalı
<pre>
*
**
***
</pre>

```bash
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
```

4- Yazdığınız piramit fonksiyonun çıktısını ortalı olacak şekilde yazınız.
Örn:
<pre>
  *
 * *
* * *
</pre>

```bash
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
```
5- https://projecteuler.net/archives ilk 3 soruyu çözünüz.

### 1
```bash
var total = 0

for index in 1..<1000 {
    if index % 3 == 0 || index % 5 == 0 {
        total = total + index
    }
}
print("total: \(total)")
```
### 2
```bash
var current = 0, previous = 1, sum = 0

while(current < 4000000) {
    current = current + previous
    previous = current - previous
    if(current % 2 == 0 ) {
        sum += current
    }
}
print("Sum is: \(sum)")
```
### 3
```bash
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
```

6- Pragmatic Programmer ilk 4 chapter okuyup, özetleyiniz.(Bullet point olabilir.)

Kolay gelsin :)
