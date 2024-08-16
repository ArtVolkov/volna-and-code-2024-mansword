import Foundation

class MyHero {
    // ...

    enum WeaponTypes {
        case sword
        case club
    }

    var weaponType: WeaponTypes = .club

    //MARK: - Strike

    func strike() -> Int {
        switch (weaponType) {
            case .sword: strikeWithSword()
            case .club:  strikeWithClub()
        }
    }

    private func strikeWithSword() -> Int { 5 }
    private func strikeWithClub() -> Int { 3 }

    //MARK: - Spells

    private func spellsWithoutWeapon() -> [Spell] {
        // ... пропустим код
        [Spell(name: "Heal")]
    }
    private var swordSpells = [Spell(name: "Fire"), Spell(name: "Lightning")]    // ⚠️
    private var clubSpells = [Spell(name: "Wood skin"), Spell(name: "Weakness")] // ⚠️

    var spells: [Spell] {
        switch (weaponType) {
        case .sword:
            return spellsWithoutWeapon() + swordSpells
        case .club:
            return spellsWithoutWeapon() + clubSpells
        }
    }

    //MARK: - Weight

    private var swordBaseWeight = Stone(value: 7) // ⚠️
    private var clubBaseWeight = Stone(value: 10) // ⚠️

    private var swordCraftQuality: Double = 2     // ⚠️
    private var clubMaterialQuality: Double = 3   // ⚠️

    var weight: Stone {
        switch (weaponType) {
        case .sword:
            return weightWithoutWeapon() + Stone(value: swordBaseWeight.value / swordCraftQuality)
        case .club:
            return weightWithoutWeapon() + Stone(value: pow(clubBaseWeight.value, 1 / clubMaterialQuality))
        }
    }

    private func weightWithoutWeapon() -> Stone {
        let meatbagWeight = Stone(value: 70)
        let pantsWeight = Stone(value: 5)
        let helmetWeight = Stone(value: 3)
        // ... в реальности тут, возможно, будут какие-то более сложные вычисления
        return meatbagWeight + pantsWeight + helmetWeight
    }
}
