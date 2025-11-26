// ModelData
// This file loads and decodes landmark data from the app’s main bundle.
// It provides a shared `landmarks` array that other views can access.

import Foundation

// Landmark Data
// Create an array of landmarks by decoding landmarkData.json.
var landmarks: [Landmark] = load("landmarkData.json")

// Load JSON Data
/// Loads and decodes a JSON file from the app’s main bundle.
///
/// The generic type `T` must conform to the `Decodable` protocol,
/// allowing this function to be reused for any JSON-decoded data model.
///
/// - Parameter filename: The name of the JSON file to load (e.g. `"landmarkData.json"`).
/// - Returns: A decoded object of type `T`
/// - Note: This function will stop the app with a `fatalError` if:
///   - The file cannot be found,
///   - The file cannot be loaded,
///   - The JSON data cannot be parsed.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    // Step 1 - Locate the File
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("❌ Couldn't find \(filename) in main bundle.")
    }

    //Step 2 - Load File Data
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("❌ Couldn't load \(filename) from main bundle:\n\(error)")
    }

    // Step 3 - Decode JSON Data
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("❌ Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
