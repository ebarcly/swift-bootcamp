//
protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("lays an egg")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("eagle is flying")
    }
    
    func soar() {
        print("ealge is gliding")
    }
}

class Penguins: Bird {
    func swim() {
        print("the penguin swims")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("engines on, airplane lifts off")
    }
}



let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguins()
myPenguin.swim()
myPenguin.layEgg()
// myPenguin.fly() // not part of the protocol

let museum = FlyingMuseum()

let myPlane = Airplane()

myPlane.fly()
museum.flyingDemo(flyingObject: myPlane)




