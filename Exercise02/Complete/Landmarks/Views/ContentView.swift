import SwiftUI

struct ContentView: View {
    var body: some View {
        // NavigationStack provides a navigation context for the list.
        NavigationStack {
            LandmarkList()
        }
    }
}

#Preview("Content View") {
    ContentView()
}
