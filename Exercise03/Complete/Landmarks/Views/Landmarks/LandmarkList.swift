import SwiftUI

// Displays a list of landmarks with an option to show only favorites
// Uses NavigationSplitView for master-detail navigation
struct LandmarkList: View {
    // Access shared app data (landmarks) from the environment
    @Environment(ModelData.self) var modelData
    // State for whether only favorite landmarks should be shown
    @State private var showFavoritesOnly = false

    // Filter landmarks based on the "favorites only" toggle
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
        // Two-column layout: list on the left, detail on the right
        NavigationSplitView {
            List {
                // Toggle to show only favorite landmarks
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                // For each filtered landmark, create a navigation link
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            // Animate changes when the filtered landmarks array updates
            .animation(.default, value: filteredLandmarks)
            // Navigation bar title
            .navigationTitle("Landmarks")
        } detail: {
            // Placeholder detail view when no landmark is selected
            Text("Select a Landmark")
        }
    }
}

// Preview with environment data injected
#Preview("Landmark List") {
    LandmarkList()
        .environment(ModelData())
}
