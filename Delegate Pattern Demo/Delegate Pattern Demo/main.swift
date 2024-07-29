////
//
///// Step 1: Define a Protocol
///// Define a protocol that the delegate (view controller) will conform to:
//
//protocol CustomButtonDelegate: AnyObject {
//    func buttonWasTapped()
//}
//
///// Step 2: Declare a Delegate Property
///// Declare a delegate property in the custom buttton class:
//
//class CustomButton {
//    weak var delegate: CustomButtonDelegate? // The weak keyword is used to avoid strong reference cycles, which can lead to memory leaks.
//
//    func tap() {
//        // Notify the delegate when the button is tapped
//        delegate?.buttonWasTapped()
//    }
//}
//
///// Step 3: Implement the Protocol
///// Implement the protocol in the view controller
//
//class ViewController: CustomButtonDelegate {
//    func buttonWasTapped() {
//        print("Button was tapped")
//    }
//}
//
///// Step 4: Assign the Delegate:
///// Assign the view controller as the delegate of the custom button
//
//let button = CustomButton()
//let viewController = ViewController()
//
//button.delegate = viewController
//
///// Step 5: Call the Delegate Methods
///// When the button is tapped, it calls the `buttonWasTapped` method on its delegate
//
//button.tap()
//
//

/////////////////////////////////////////////

// Protocols and Delegate code:

protocol AdvanceLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvanceLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("Chest compressions, 30 per second")
    }
}

class Doctor: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("doctor does chest compression")
    }
    
    func useStethescope() {
        print("Listening heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sign staying alive")
    }
    
    func useElectricDrill() {
        print("Whirrr...")
    }
}

let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
