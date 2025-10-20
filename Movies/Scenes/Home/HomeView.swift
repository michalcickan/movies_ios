import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        List(viewModel.items.indices, id: \.self) { index in
            Button(action: {
                viewModel.didSelectItem(at: index)
            }) {
                Text(viewModel.items[index])
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
    ContentView()
}
