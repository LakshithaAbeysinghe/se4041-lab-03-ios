// Landmark Row View
// This view displays a single landmark in a row format,
// showing its image, name, and spacing for clean layout.

import SwiftUI

struct LandmarkRow: View {
    // A property to hold information about a specific landmark.
    var landmark: Landmark

    var body: some View {
        HStack {
            // Landmark Image
            // Show the landmark’s image, resized to a small square.
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)

            // Landmark Name
            // Display the name of the landmark next to its image.
            Text(landmark.name)

            // Spacer
            // Adds flexible space after the text to push content to the left.
            Spacer()
        }
    }
}

#Preview("Landmark Row") {
    // Group multiple previews so they appear together in Xcode’s preview pane.
    Group {
        // Display several example landmarks from the data array.
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
        LandmarkRow(landmark: landmarks[2]) // Extra example
    }
}
