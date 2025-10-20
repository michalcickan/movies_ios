import SwiftUI
import Combine

@MainActor
final class AppRouter: ObservableObject, NavigationCoordinator {
    @Published var paths = NavigationPath()
    @Published var presentedModal: AnyRoutable?
    
    func push(_ routable: any Routable) {
        self.paths.append(AnyRoutable(routable))
    }
    
    func popLast() {
        self.paths.removeLast()
    }
    
    func popToRoot() {
        self.paths.removeLast(self.paths.count)
    }
    
    func presentModal(_ routable: any Routable) {
        presentedModal = AnyRoutable(routable)
    }
    
    func dismissModal() {
        presentedModal = nil
    }
}
