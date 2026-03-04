import Foundation
import Testing
@testable import Package

/// Tests to validate the `Person` type.
struct PersonTests {
    private let sut: Person

    init() {
        sut = Person(name: "Justin Williams")
    }

    @Test("Initializer sets default values properly")
    func defaultValuesProperlySet() {
        let expectedName = "Justin Williams"
        #expect(sut.name == expectedName)
    }
}
