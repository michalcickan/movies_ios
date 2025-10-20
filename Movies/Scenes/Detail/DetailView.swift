import SwiftUI

struct DetailView: View {
    @StateObject var viewModel: DetailViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.text)
        }
        .navigationTitle(viewModel.text)
    }
}

#Preview {
    DetailView(viewModel: .init(text: "test", router: .init(rootCoordinator: AppRouter())))
}
