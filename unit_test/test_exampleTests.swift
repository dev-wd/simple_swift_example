import XCTest
@testable import test_example

class test_exampleTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLiamIsStudent() {
        let liam = Person(personName: "Liam",age:26)
        XCTAssert(!liam.isStudent)
    }
    func testEllaIsStudent() {
        let ella = Person(personName: "Ella",age:25)
        XCTAssert(!ella.isStudent)
    }
}
