//var greetings: String = "Hello"
//
//var name: String = "Enrique"
//
//print("\(greetings), \(name)!")
//
//var a = 5
//var b = 8
//
//print("a: \(a)")
//print("b: \(b)")
//
//var c = a
//a = b
//b = c
//
//print("a: \(a)")
//print("b: \(b)")

// Challege

//func exercise() -> [Int] {
//    let arr = [45, 73, 195, 53]
//    
//    var computedNumbers = [Int]()
//    
//    for index in 0..<arr.count {
//        if index < arr.count - 1{
//            let multipliedNumber = arr[index] * arr[index + 1]
//            computedNumbers.append(multipliedNumber)
//        } else {
//            let lastNum = arr[index] * arr[0]
//            computedNumbers.append(lastNum)
//        }
//    }
//    return computedNumbers
//    
//}
//
//let result = exercise()
//print(result)


// Challenge

//func exercise() {
//    
//    
//    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//    
//    //The number of letters in alphabet equals 26
//    var lettersCount = alphabet.count
//    print(lettersCount)
//    let password = "\(alphabet[Int.random(in: 0...lettersCount)])\(alphabet[Int.random(in: 0...lettersCount)])\(alphabet[Int.random(in: 0...lettersCount)])\(alphabet[Int.random(in: 0...lettersCount)])\(alphabet[Int.random(in: 0...lettersCount)])\(alphabet[Int.random(in: 0...lettersCount)])"
//    
//    print(password)
//    
//    
//}
//
//exercise()

//func greeting () {
//    print("hello")
//}
//
//greeting()

////Don't change this code:
//func calculator() {
//  let a = Int(readLine()!)! //First input
//  let b = Int(readLine()!)! //Second input
//  
//  add(n1: a, n2: b)
//  subtract(n1: a, n2: b)
//  multiply(n1: a, n2: b)
//  divide(n1: a, n2: b)
//  
//}
//
//
////Write your code below this line to make the above function calls work.
//
//func add (n1: Int, n2: Int) -> Int {
//   n1 + n2
//}
//
//func subtract (n1: Int, n2: Int) -> Int {
//   n1 - n2
//}
//
//func multiply (n1: Int, n2: Int) -> Int {
//    n1 * n2
//}
//
//func divide (n1: Int, n2: Int) -> Double{
//    Double(n1) / Double(n2)
//}
//
//add(n1: 3, n2: 4)
//subtract(n1: 3, n2: 4)
//multiply(n1: 3, n2: 4)
//divide(n1: 3, n2: 4)



func getMilk (bottles: Int) {
    var cost = Double(bottles) * 1.5
    
    print(cost)
}

getMilk(bottles: 3)


func greetings (name: String) {
    
    print("Hello \(name)")
}

greetings(name: "Enrique")
