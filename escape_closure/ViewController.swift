import UIKit

class ViewController: UIViewController {
    
    // Declare closure for case 2.
    
    let getColorClosure : (String) -> Void = {
        color in
        print(color)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Implement case 1
        
        getFruitColorwithTrailingClosure("banana") {
            color in
            
            print(color)
        }
        
        
        // Implement case 2
        
        getFruitColorwithClosure("melon",completion: getColorClosure)
    }
    
    
    // case 1 : Completion Handle with TrailingClosure
    
    func getFruitColorwithTrailingClosure(_ fruitName : String, completion: @escaping (String)-> Void) {
        
        var color = "Not yet"
        
        if fruitName == "banana" {
            color = "yellow"
        }
        
        if fruitName == "apple" {
            color = "red"
        }
        
        if fruitName == "melon" {
            color = "green"
        }
        
        completion(color)
    }
    
    // case 2 : Completion Handle with DeclaredClosure
    
    func getFruitColorwithClosure(_ fruitName : String, completion: @escaping (String)-> Void) {
        var color = "Not yet"
        
        if fruitName == "banana" {
            color = "yellow"
        }
        
        if fruitName == "apple" {
            color = "red"
        }
        
        if fruitName == "melon" {
            color = "green"
        }
        
        completion(color)
        
    }

}
