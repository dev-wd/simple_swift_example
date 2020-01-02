class FruitRetainClass1{
    weak var fruitRetainClass: FruitRetainClass2? = nil
    init(){
        print("init")
    }
    deinit{
        print("deinit")
    }
}

class FruitRetainClass2{
    var fruitRetainClass: FruitRetainClass1? = nil
    init(){
        print("init")
    }
    deinit{
        print("deinit")
    }
}

var fruitRetainClass1: FruitRetainClass1? = FruitRetainClass1()
var fruitRetainClass2: FruitRetainClass2? = FruitRetainClass2()

fruitRetainClass1?.fruitRetainClass = fruitRetainClass2
fruitRetainClass2?.fruitRetainClass = fruitRetainClass1


fruitRetainClass1 = nil
fruitRetainClass2 = nil
