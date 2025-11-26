import SwiftUI
import MapKit

// Displays a map centered on a given coordinate
struct MapView: View {
    // The coordinate to center the map on
    var coordinate: CLLocationCoordinate2D

    var body: some View {
        // Create a Map view bound to a fixed region
        // Using .constant because this view doesn't need to update the region interactively
        Map(position: .constant(.region(region)))
    }

    // Computed property for the map region
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            // Center the map on the provided coordinate
            center: coordinate,
            // Set the zoom level of the map
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

// Preview showing a map of a specific coordinate
#Preview("Map View") {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
