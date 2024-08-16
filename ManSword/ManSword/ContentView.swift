import SwiftUI

struct ContentView: View {

    let fillColor = Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))

    var body: some View {
        Rectangle().fill(fillColor).ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
