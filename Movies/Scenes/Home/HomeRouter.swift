import Foundation

protocol HomeRouterType {
    func showDetail(item: String)
}

struct HomeRouter {
    private let rootCoordinator: NavigationCoordinator
    
    init(rootCoordinator: NavigationCoordinator) {
        self.rootCoordinator = rootCoordinator
    }
}

extension HomeRouter: HomeRouterType {
    func showDetail(item: String) {
        rootCoordinator.presentModal(DetailConfigurator(item: item))
    }
}
