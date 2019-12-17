class FruitRetainClass{
    var fruitRetainClass: FruitRetainClass? = nil
    init(){
        print("init")
    }
    deinit{
        print("deinit")
    }
}

var fruitRetainClass1: FruitRetainClass? = FruitRetainClass()
var fruitRetainClass2: FruitRetainClass? = FruitRetainClass()

fruitRetainClass1?.fruitRetainClass = fruitRetainClass2
fruitRetainClass2?.fruitRetainClass = fruitRetainClass1
