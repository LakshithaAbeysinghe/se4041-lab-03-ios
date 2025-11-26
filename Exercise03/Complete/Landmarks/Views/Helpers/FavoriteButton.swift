import SwiftUI

// A button that toggles a landmark's favorite status
struct FavoriteButton: View {
    // Binding to the landmark's isFavorite property
    @Binding var isSet: Bool

    var body: some View {
        Button {
            // Toggle the favorite status when the button is tapped
            isSet.toggle()
        } label: {
            // Show a star icon: filled if favorite, empty if not
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly) // Only show the icon, no text
                .foregroundStyle(isSet ? .yellow : .gray) // Color changes based on favorite state
        }
    }
}

// Preview showing the favorite button in the "on" state
#Preview("Favorite Button") {
    FavoriteButton(isSet: .constant(true))
}
