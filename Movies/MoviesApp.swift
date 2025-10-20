import SwiftUI
import SwiftData

@main
struct MoviesApp: App {
    var body: some Scene {
        WindowGroup {
            AppNavigationView(appRouter: AppRouter())
        }
        .modelContainer(AppModelContainer.shared)
    }
}
