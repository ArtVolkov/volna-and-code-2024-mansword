
struct Spell: Equatable {
    let name: String
}

struct Stone {
    let value: Double

    init(value: Double) {
        self.value = value.roundedWith1Digit()
    }
}

extension Stone {
    static func + (lhs: Stone, rhs: Stone) -> Stone {
        return Stone(value: lhs.value + rhs.value)
    }
}

extension Double {
    func roundedWith1Digit() -> Double {
        return (self * 10).rounded() / 10
    }
}
