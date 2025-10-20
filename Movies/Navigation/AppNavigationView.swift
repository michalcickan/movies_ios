import Foundation
import SwiftUI

struct AppNavigationView: View {
    @StateObject var appRouter: AppRouter
    
    var body: some View {
        NavigationStack(path: $appRouter.paths) {
            HomeConfigurator().makeView(coordinator: appRouter)
        }
        .navigationDestination(for: AnyRoutable.self) { route in
            route.makeView(coordinator: appRouter)
        }
        .sheet(item: $appRouter.presentedModal) { route in
            NavigationStack { route.makeView(coordinator: appRouter) }
        }
    }
}
