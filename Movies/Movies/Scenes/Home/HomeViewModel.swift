import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    @Published var items: [String] = ["test", "test2", "test3"]
    
    private let router: HomeRouter
    
    init(router: HomeRouter) {
        self.router = router
        self.items = items
    }
    
    @objc func didSelectItem(at index: Int) {
        router.showDetail(item: items[index])
    }
}
