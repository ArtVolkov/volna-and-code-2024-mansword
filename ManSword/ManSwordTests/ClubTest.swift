import XCTest
@testable import ManSword

final class ClubTest: XCTestCase {

    let sut = Club()

    func testStrike() throws {
        XCTAssertEqual(sut.strike(), 3)
    }

    func testWeight() throws {
        XCTAssertEqual(sut.weight.value, 2.2)
    }

    func testSpells() throws {
        XCTAssertEqual(sut.spells, [Spell(name: "Wood skin"), Spell(name: "Weakness")])
    }
}
