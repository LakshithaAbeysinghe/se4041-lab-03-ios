// Landmark Model
// Defines the structure and data for a single landmark,
// including its name, location, image, and description.

import Foundation
import SwiftUI
import CoreLocation

// Structure
/// A model representing a landmark item.
/// Conforms to `Hashable`, `Codable`, and `Identifiable` for use in lists,
/// JSON decoding, and SwiftUI data binding.
struct Landmark: Hashable, Codable, Identifiable {
    // Landmark Properties
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    // Image Handling
    /// Stores the name of the image asset.
    /// Marked as private because it’s only used internally
    /// to create the public computed `image` property below.
    private var imageName: String

    /// A computed property that returns an Image view
    /// created from the image asset’s name.
    var image: Image {
        Image(imageName)
    }

    // Coordinates
    /// Stores the raw latitude and longitude values from the JSON data.
    private var coordinates: Coordinates

    /// A computed property that converts `coordinates`
    /// into a `CLLocationCoordinate2D`, which is useful for MapKit.
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    //  Coordinates Structure
    /// Represents the geographic coordinates of a landmark.
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
