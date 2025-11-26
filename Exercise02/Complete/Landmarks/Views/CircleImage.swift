// CircleImage View
// This view displays an image inside a circular frame
// with a white border and subtle shadow.

import SwiftUI

struct CircleImage: View {
    // Property
    // The image to display in the circular frame.
    var image: Image

    var body: some View {
        // Image Styling
        // Wrap and combine modifiers to style the image consistently.
        image
            .clipShape(Circle()) // Crop the image into a circular shape.
            .overlay {
                Circle().stroke(.white, lineWidth: 4) // Add a white border around the circle.
            }
            .shadow(radius: 7) // Apply a soft drop shadow for depth.
    }
}

#Preview("Circle Image") {
    // Show a preview using the Turtle Rock image asset.
    CircleImage(image: Image("turtlerock"))
}
