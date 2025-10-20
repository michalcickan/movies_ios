import Foundation
import Combine

final class DetailViewModel: ObservableObject, Identifiable {
    let id = UUID()
    @Published private(set) var text: String
    private let router: DetailRouter

    init(text: String, router: DetailRouter) {
        self.text = text
        self.router = router
    }
}
