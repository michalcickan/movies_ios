import Foundation
import SwiftUI

struct DetailConfigurator: Routable {
    let item: String
    
    func makeView(coordinator: any NavigationCoordinator) -> AnyView {
        let router = DetailRouter(rootCoordinator: coordinator)
        let viewModel = DetailViewModel(text: item, router: router)
        return AnyView(DetailView(viewModel: viewModel))
    }
}

extension DetailConfigurator {
    static func == (lhs: DetailConfigurator, rhs: DetailConfigurator) -> Bool {
        lhs.item == rhs.item
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(item)
    }
}
