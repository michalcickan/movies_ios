import Foundation
import SwiftUI

struct HomeConfigurator: Routable {
    func makeView(coordinator: any NavigationCoordinator) -> AnyView {
        let router = HomeRouter(rootCoordinator: coordinator)
        let homeViewModel = HomeViewModel(router: router)
        return AnyView(HomeView(viewModel: homeViewModel))
    }
}
