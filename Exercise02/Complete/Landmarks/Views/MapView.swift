// MapView
// This view displays a map centered on a specific coordinate.
// It uses SwiftUI’s MapKit integration to render a region.

import SwiftUI
import MapKit

struct MapView: View {
    // Property
    // The coordinate around which the map will be centered.
    var coordinate: CLLocationCoordinate2D

    var body: some View {
        // Map Configuration
        // Use a constant binding for the map position since this view
        // doesn’t need to respond to user map interactions.
        Map(position: .constant(.region(region)))
    }

    // Computed Region
    // Define the visible map region using the provided coordinate.
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate, // Center the map on the landmark’s location.
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview("Map View") {
    // Preview the map centered on a fixed coordinate (Turtle Rock).
    MapView(
        coordinate: CLLocationCoordinate2D(
            latitude: 34.011_286,
            longitude: -116.166_868
        )
    )
}
