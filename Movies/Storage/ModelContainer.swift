import Foundation
import SwiftData

struct AppModelContainer  {
    static var shared: ModelContainer {
        // Locate the app's Documents directory
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsURL = urls[0]
        // Set the storage file name for SwiftData
        let storeURL = documentsURL.appendingPathComponent("Movies.sqlite")
        
        // Create the configuration with your custom URL
        let configuration = ModelConfiguration(url: storeURL)
        
        // Register the Item model with this configuration
        do {
            return try ModelContainer(
                for: Item.self,
                configurations: configuration
            )
        } catch {
            fatalError("Failed to create ModelContainer: \\(error)")
        }
    }
}
