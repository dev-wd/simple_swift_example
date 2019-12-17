import Foundation

class FruitClass {
    init() {
        print("init")
    }
    
    deinit{
        print("deinit")
    }
}

var fruitClass : FruitClass? = FruitClass()
fruitClass = nil
