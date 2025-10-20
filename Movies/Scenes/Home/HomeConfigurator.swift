import Foundation
import SwiftUI

struct HomeConfigurator: Routable {
    func makeView(coordinator: any NavigationCoordinator) -> AnyView {
        let homeViewModel = HomeViewModel(
            router:  HomeRouter(rootCoordinator: coordinator),
            service: HomeService()
        )
        return AnyView(HomeView(viewModel: homeViewModel))
    }
}
