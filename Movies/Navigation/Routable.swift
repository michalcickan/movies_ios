import Foundation
import SwiftUI

protocol Routable: Hashable {
    func makeView(coordinator: NavigationCoordinator) -> AnyView
}

// For navigationDestination, otherwise it will complain
struct AnyRoutable: Routable, Identifiable {
    private let wrapped: any Routable
    
    var id: Int {
        wrapped.hashValue
    }
    
    init(_ wrapped: any Routable) {
        self.wrapped = wrapped
    }
    
    func makeView(coordinator: any NavigationCoordinator) -> AnyView {
        wrapped.makeView(coordinator: coordinator)
    }
    
    static func == (lhs: AnyRoutable, rhs: AnyRoutable) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        wrapped.hash(into: &hasher)
    }
}
