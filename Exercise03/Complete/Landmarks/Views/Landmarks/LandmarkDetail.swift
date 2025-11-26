import SwiftUI

// Displays detailed information about a single landmark
// Includes map, image, description, and a favorite button
struct LandmarkDetail: View {
    // Access shared app data (landmarks) from the environment
    @Environment(ModelData.self) var modelData
    // The landmark to display
    var landmark: Landmark

    // Compute the index of this landmark in the shared model data
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        // Bind the model data so changes propagate to the environment
        @Bindable var modelData = modelData

        ScrollView {
            // Display a map of the landmark's location
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)

            // Display a circular image of the landmark
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                // Name and favorite button
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    // FavoriteButton updates the favorite state in shared model data
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }

                // Park and state information
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                // Description section
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        // Navigation title for the detail view
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Preview for testing the detail view
#Preview("Landmark Detail") {
    let modelData = ModelData()
    LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
