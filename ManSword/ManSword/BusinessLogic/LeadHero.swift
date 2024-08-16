import Foundation

protocol Weapon {
    func strike() -> Int
    var spells: [Spell] {get}
    var weight: Stone {get}
}

class LeadHero {

    var weapon: Weapon

    init(_ weapon: Weapon) {
        self.weapon = weapon
    }

    //MARK: - Strike

    func strike() -> Int {
        weapon.strike()
    }

    //MARK: - Spells

    private func spellsWithoutWeapon() -> [Spell] {
        // ...
        [Spell(name: "Heal")]
    }
    var spells: [Spell] {
        spellsWithoutWeapon() + weapon.spells
    }

    //MARK: - Weight

    var meatbagWeight = Stone(value: 70)
    var pantsWeight = Stone(value: 5)     // ?
    var helmetWeight = Stone(value: 3)    // ?

    var weight: Stone {
        return weightWithoutWeapon() + weapon.weight
    }

    private func weightWithoutWeapon() -> Stone {
        let meatbagWeight = Stone(value: 70)
        let pantsWeight = Stone(value: 5)
        let helmetWeight = Stone(value: 3)
        // ... в реальности тут, возможно, будут какие-то более сложные вычисления
        return meatbagWeight + pantsWeight + helmetWeight
    }
}

class Sword: Weapon {
    func strike() -> Int {
        5 // в примере - это просто число, но что будет в настоящем приложении?
    }

    private var craftQuality: Double = 2
    private var baseWeight = Stone(value: 7)
    var weight: Stone {
        Stone(value: (baseWeight.value / craftQuality))
    }

    var spells: [Spell] {
        [Spell(name: "Fire"), Spell(name: "Lightning")]
    }
}

class Club: Weapon {
    func strike() -> Int {
        3
    }

    private var materialQuality: Double = 3
    private var baseWeight = Stone(value: 10)
    var weight: Stone {
        Stone(value: pow(baseWeight.value, 1 / materialQuality))
    }

    var spells: [Spell] {
        [Spell(name: "Wood skin"), Spell(name: "Weakness")]
    }
}

class HeroFactory {
    static func makeSwordsman() -> LeadHero {
        let weapon = Sword(/* ... */)
        return LeadHero(weapon)
    }

    static func makeClubman() -> LeadHero {
        let weapon = Club(/* ... */)
        return LeadHero(weapon)
    }
}
