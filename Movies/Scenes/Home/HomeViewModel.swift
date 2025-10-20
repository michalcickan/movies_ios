import Foundation
import Combine

protocol HomeViewModelInput {
    func didSelectItem(at index: Int)
}

protocol HomeViewModelOutput: ObservableObject {
    var items: [String] { get }
}

protocol HomeViewModelType: ObservableObject {
    var output: any HomeViewModelOutput { get }
    var input: HomeViewModelInput { get }
}

final class HomeViewModel {
    @Published private var movies: [String] = ["test", "test2", "test3"]
    
    private let router: HomeRouterType
    private let service: HomeServiceType
    
    init(router: HomeRouterType, service: HomeServiceType) {
        self.router = router
        self.service = service
    }
}

extension HomeViewModel: HomeViewModelInput {
    func didSelectItem(at index: Int) {
        router.showDetail(item: items[index])
    }
}

extension HomeViewModel: HomeViewModelOutput {
    var items: [String] {
        movies
    }
    
}

extension HomeViewModel: HomeViewModelType {
    var input: any HomeViewModelInput { self }
    var output: any HomeViewModelOutput { self }
}
