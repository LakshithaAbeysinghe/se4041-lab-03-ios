import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // List of landmarks inside the navigation stack
        List(landmarks) { landmark in
            // Each row navigates to LandmarkDetail when tapped
            NavigationLink {
                LandmarkDetail(landmark: landmark)
            } label: {
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks") // Set the navigation bar title
    }
}

#Preview("Landmark List") {
    LandmarkList()
}
