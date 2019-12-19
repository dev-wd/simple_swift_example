import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animal = Animal()
        let animalNameShowClass = AnimalNameShowClass()
        animalNameShowClass.delegate = animal
        animalNameShowClass.value = "lion"
    }
}

protocol AnimalNameShowDelegate {
    func resultOfAnimalName(value: String)
}

class AnimalNameShowClass {
    var delegate: AnimalNameShowDelegate?
    
    init(){
        print("init")
    }
    deinit{
        print("deinit")
    }
    var value: String {
        set{
            self.delegate?.resultOfAnimalName(value: newValue)
        }
        get{
            return "No Animal"
        }
    }
}

class Animal: AnimalNameShowDelegate {
    func resultOfAnimalName(value: String) {
        print("Animal name : \(value)")
    }
}
