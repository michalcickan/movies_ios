import Foundation

protocol NavigationCoordinator {
    func push(_ path: any Routable)
    func popLast()
    func popToRoot()
    func presentModal(_ routable: any Routable)
    func dismissModal()
}
