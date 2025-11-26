import SwiftUI

// Displays an image in a circular frame with a white border and shadow
struct CircleImage: View {
    // The image to display
    var image: Image

    var body: some View {
        image
            // Clip the image into a circle shape
            .clipShape(Circle())
            // Overlay a white circular border around the image
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            // Add a subtle shadow for depth
            .shadow(radius: 7)
    }
}

// Preview showing the image of Turtle Rock
#Preview("Circle Image") {
    CircleImage(image: Image("turtlerock"))
}
