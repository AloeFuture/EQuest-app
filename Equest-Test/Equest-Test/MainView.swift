import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            TabView {
                    EHubView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("EHub")
                        }                .toolbar(.visible, for: .tabBar)
                        .toolbarBackground(Color.yellow, for: .tabBar)
                    
                    // Tab 2: Contacts
                    ContactsView()
                        .tabItem {
                            Image(systemName: "book.fill")
                            Text("Contacts")
                        }                .toolbar(.visible, for: .tabBar)
                        .toolbarBackground(Color.yellow, for: .tabBar)
                    
                    // Tab 3: Contribute
                    ContributeView()
                        .tabItem {
                            Image(systemName: "plus.circle")
                            Text("Contribute")
                        }                .toolbar(.visible, for: .tabBar)
                        .toolbarBackground(Color.yellow, for: .tabBar)
                    
                    // Tab 4: Profile
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Profile")
                        }.toolbar(.visible, for: .tabBar)
                        .toolbarBackground(Color.yellow, for: .tabBar)
                    }
            .accentColor(.green) // Cor dos ícones ativos
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
