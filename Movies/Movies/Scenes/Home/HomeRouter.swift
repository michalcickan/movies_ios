import Foundation

struct HomeRouter {    
    private let rootCoordinator: NavigationCoordinator
    
    init(rootCoordinator: NavigationCoordinator) {
        self.rootCoordinator = rootCoordinator
    }
    
    func showDetail(item: String) {
        rootCoordinator.presentModal(DetailConfigurator(item: item))
    }
}
