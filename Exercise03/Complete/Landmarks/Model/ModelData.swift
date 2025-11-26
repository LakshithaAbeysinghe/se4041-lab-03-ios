import Foundation

// Observable class holding the app's landmark data
// Any changes to landmarks will automatically update views that observe this object
@Observable
class ModelData {
    // Load landmarks from the JSON file when the class is initialized
    var landmarks: [Landmark] = load("landmarkData.json")
}

// Generic function to load and decode JSON data from the app bundle
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    // Locate the file in the app bundle
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    // Try to read the data from the file
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    // Decode the JSON data into the expected type
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
