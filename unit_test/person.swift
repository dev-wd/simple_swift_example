import Foundation

struct Person {
    let personName: String
    let age: Int
    var isStudent: Bool { get{
        return age < 20
        }}
}
