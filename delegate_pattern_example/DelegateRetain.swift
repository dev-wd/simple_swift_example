import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var animalNameShowClass : AnimalNameShowClass? = AnimalNameShowClass()
        animalNameShowClass = nil
    }
}

class AnimalNameShowClass: AnimalAgeDelegate {
    let animal = Animal()
    
    init() {
        animal.delegate = self
        animal.animalName = "lian"
        print("init")
    }
    deinit{
        print("deinit")
    }
    
    func setAnimalAge(value : String) {
        print("print \(value)")
    }
}

class Animal {
    init() {
        print("init")
    }
    deinit{
        print("deinit")
    }
    // weak var delegate: AnimalAgeDelegate?
    var delegate: AnimalAgeDelegate?
    var animalName : String {
        set {
            self.delegate?.setAnimalAge(value: newValue)
        }
        get {
            return "No Animal"
        }
    }
}
