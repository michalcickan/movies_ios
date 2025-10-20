import SwiftUI

struct HomeView<ViewModel: HomeViewModelType>: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        List(viewModel.output.items.indices, id: \.self) { index in
            Button(action: {
                viewModel.input.didSelectItem(at: index)
            }) {
                Text(viewModel.output.items[index])
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                EditButton()
            }
        }
        .navigationBarTitle("Home")
    }
}

#Preview {
    HomeView(
        viewModel: HomeViewModel(
            router: HomeRouter(rootCoordinator: AppRouter()),
            service: HomeService()
        )
    )
}
