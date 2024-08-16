import XCTest
@testable import ManSword

final class MyHeroTest: XCTestCase {

    let sut = MyHero()

    // MARK: Sword

    func testStrikeWithSword() throws {
        // given
        sut.weaponType = .sword

        // when
        let damage = sut.strike()

        // then
        XCTAssertEqual(damage, 5)
    }

    func testWeightWithSword() throws {
        // given
        sut.weaponType = .sword

        // when
        let weight = sut.weight

        // then
        XCTAssertEqual(weight.value, 81.5)
    }

    func testSpellsWithSword() throws {
        // given
        sut.weaponType = .sword

        // when
        let spells = sut.spells

        // then
        XCTAssertEqual(spells, [Spell(name: "Heal"), Spell(name: "Fire"), Spell(name: "Lightning")])
    }

    // MARK: Club

    func testStrikeWithClub() throws {
        // given
        sut.weaponType = .club

        // when
        let damage = sut.strike()

        // then
        XCTAssertEqual(damage, 3)
    }

    func testWeightWithClub() throws {
        // given
        sut.weaponType = .club

        // when
        let weight = sut.weight

        // then
        XCTAssertEqual(weight.value, 80.2)
    }

    func testSpellsWithClub() throws {
        // given
        sut.weaponType = .club

        // when
        let spells = sut.spells

        // then
        XCTAssertEqual(spells, [Spell(name: "Heal"), Spell(name: "Wood skin"), Spell(name: "Weakness")])
    }
}
