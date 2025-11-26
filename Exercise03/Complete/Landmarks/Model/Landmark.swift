import Foundation
import SwiftUI
import CoreLocation

// Represents a single landmark
// Conforms to Hashable, Codable (for JSON parsing), and Identifiable (for use in lists)
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int               // Unique identifier
    var name: String          // Landmark name
    var park: String          // Park it belongs to
    var state: String         // State it is located in
    var description: String   // Description text
    var isFavorite: Bool      // Tracks if the landmark is marked as favorite

    // Private property storing the image name from the JSON
    private var imageName: String
    // Computed property to return a SwiftUI Image
    var image: Image {
        Image(imageName)
    }

    // Private property storing latitude and longitude
    private var coordinates: Coordinates
    // Computed property for MapKit integration
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    // Nested struct to store coordinates
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
