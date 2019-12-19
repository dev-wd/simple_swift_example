import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var animalNameShowClass : AnimalNameShowClass? = AnimalNameShowClass()
        animalNameShowClass = nil
    }
}

protocol AnimalNameShowDelegate: class {
    func resultOfAnimalName(value : String)
}

class AnimalNameShowClass: AnimalNameShowDelegate {
    let animal = Animal()
    
    init() {
        animal.delegate = self
        animal.animalName = "lion"
        print("init")
    }
    deinit{
        print("deinit")
    }
    
    func resultOfAnimalName(value : String) {
        print("Animal name : \(value)")
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
    var delegate: AnimalNameShowDelegate?
    var animalName : String {
        set {
            self.delegate?.resultOfAnimalName(value: newValue)
        }
        get {
            return "No Animal"
        }
    }
}
