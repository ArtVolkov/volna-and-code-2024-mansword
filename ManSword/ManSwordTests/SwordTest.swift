import XCTest
@testable import ManSword

final class SwordTest: XCTestCase {

    let sut = Sword()

    func testStrike() throws {
        XCTAssertEqual(sut.strike(), 5)
    }

    func testWeight() throws {
        XCTAssertEqual(sut.weight.value, 3.5)
    }

    func testSpells() throws {
        XCTAssertEqual(sut.spells, [Spell(name: "Fire"), Spell(name: "Lightning")])
    }
}
