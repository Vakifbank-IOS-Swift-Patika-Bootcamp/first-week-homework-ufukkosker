import Foundation

//TypeSafe yaptım çünkü ödevde string değer girilmesi isteniyordu.
//kullanıcının/developerın bir sonraki adımda Int, Float, Double gibi değerlerin girmesini engellemek istedim.
var palindromeText: String = "küçük"

print("is palindrome: \(palindromeText.isPalindrome)")

//Palindrome'ı sadece String için kullanacağımız için String'e extension yazdım.
//isPalindrome String'in bir özelliğiymiş gibi çalışmaktadır.
extension String {
    var isPalindrome: Bool {
        //String'in kendisine ek bir özellik yazdığımız için self dememizde bir sakınca yoktur.
        //değişkene atanan String değerini kendisinin tersi olan String ile karşılaştırma yaptım.
        //eğer sonuç true ise buradaki properti true sonucunu gönderecektir.
        return self == String(self.reversed())
    }
 }
