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



//func getMilk (bottles: Int) {
//    var cost = Double(bottles) * 1.5
//    
//    print(cost)
//}
//
//getMilk(bottles: 3)
//
//
//func greetings (name: String) {
//    
//    print("Hello \(name)")
//}
//
//greetings(name: "Enrique")


//func loveCalculator () {
//    var randomInt = Int.random(in: 0...100)
//    
//    switch randomInt {
//    case 81...100:
//        print("You love like Kanye loves Kanye")
//    case 41..<81:
//        print("You love like mentos and coke")
//    case ...40:
//        print("Your love is invisible at \(randomInt) %")
//    default:
//        print("No love")
//    }
//}
//
//loveCalculator()


//struct Town {
//    let name: String
//    var citizens: [String]
//    var resources: [String: Int]
//    
//    init(name: String, citizens: [String], resources: [String : Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
//    
//    func fortify() {
//        print("Defenses are UP!")
//    }
//}
//
//var MyTown = Town(name: "Belleville", citizens: ["Jack Ma"], resources: ["Computers": 2])
//
//print("\(MyTown.citizens[0]) lives in \(MyTown.name) and he has \(MyTown.resources["Computers"]!)")
//print(MyTown.citizens[0])

//class Vehicle {
//    var speed: Double
//    var capacity: Int
//    
//    init(speed: Double, capacity: Int) {
//        self.speed = speed
//        self.capacity = capacity
//    }
//    
//    func describe() -> String {
//        return "A vehicle moving at \(speed) km/h with a capacity of \(capacity) people."
//    }
//}
//
//class Car: Vehicle {
//    var brand: String
//    
//    init(speed: Double, capacity: Int, brand: String) {
//        self.brand = brand
//        super.init(speed: speed, capacity: capacity)
//    }
//    
//    override func describe() -> String {
//        return "A \(brand) car moving at \(speed) km/h with a capacity of \(capacity) people."
//    }
//}
//
//let myCar = Car(speed: 120.0, capacity: 2, brand: "Porsche")
//print(myCar.describe())


// Define the User struct here
    struct User {
        var name: String
        var email: String?
        var followers: Int
        var isActive: Bool
        
        init(name: String, email: String?, followers: Int, isActive: Bool) {
            self.name = name
            self.email = email
            self.followers = followers
            self.isActive = isActive
        }
        
        func logStatus() {
            if isActive == true {
                print("\(name) is working hard")
            } else {
                print("\(name) has left earth")
            }
        }
    }
    
    
    
    // Initialise a User struct here
let Richard = User(name: "Richard", email: "", followers: 0, isActive: false)
Richard.logStatus()


    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
