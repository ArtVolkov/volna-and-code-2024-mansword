import XCTest
@testable import ManSword

class StubWeapon: Weapon {

    func strike() -> Int { 42 }

    let spells = [Spell(name: "stub")]

    let weight = Stone(value: 777)
}

final class LeadHeroTest: XCTestCase {

    let sut = LeadHero(StubWeapon())

    func testStrike() throws {
        // given
        sut.weapon = StubWeapon()

        // when
        let damage = sut.strike()

        // then
        XCTAssertEqual(damage, 42)
    }

    func testWeight() throws {
        // given
        sut.weapon = StubWeapon()

        // when
        let weight = sut.weight

        // then
        XCTAssertEqual(weight.value, 855)
    }

    func testSpells() throws {
        // given
        sut.weapon = StubWeapon()

        // when
        let spells = sut.spells

        // then
        XCTAssertEqual(spells, [Spell(name: "Heal"), Spell(name: "stub")])
    }
}
