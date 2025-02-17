import SwiftUI

struct NavigationBarView: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        VStack(spacing: 0) {
            // Renderiza a view com base na aba selecionada
            switch selectedTab {
            case 0:
                MenuInicialView()
            case 1:
                ContactsView()
            case 2:
                ReportView()
            case 3:
                CentralView()
            default:
                MenuInicialView()
            }

            CustomNavigationBar(selectedTab: $selectedTab)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.bottom)
    }
}
