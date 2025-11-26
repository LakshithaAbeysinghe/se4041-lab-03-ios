import SwiftUI

// Displays a single landmark in a horizontal row for lists
// Shows the landmark image, name, and a favorite star if applicable
struct LandmarkRow: View {
    // The landmark this row represents
    var landmark: Landmark

    var body: some View {
        HStack {
            // Resize image to 50x50 points for consistent row size
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)

            // Display the landmark name
            Text(landmark.name)

            Spacer() // Pushes content to edges

            // Show a yellow star if the landmark is marked as favorite
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

// Preview showing the first landmark
#Preview("First Landmark Row") {
    let landmarks = ModelData().landmarks
    LandmarkRow(landmark: landmarks[0])
}

// Preview showing the second landmark
#Preview("Second Landmark Row") {
    let landmarks = ModelData().landmarks
    LandmarkRow(landmark: landmarks[1])
}
