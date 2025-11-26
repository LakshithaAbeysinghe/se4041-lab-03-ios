// LandmarksApp
// The main entry point of the Landmarks app.
// It defines the app’s structure and initial user interface.

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        // App Window
        // The WindowGroup provides the main window for the app’s UI.
        // It displays ContentView when the app launches.
        WindowGroup {
            ContentView()
        }
    }
}
