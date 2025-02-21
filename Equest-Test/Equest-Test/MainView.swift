import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            TabView {
                    EHubView()
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
                    .toolbarBackground(Color(red: 231, green: 226, blue: 0.79), for: .tabBar)
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("EHub")
                        }
                
                
                    
                    // Tab 2: Contacts
                    ContactsView()
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
                    .toolbarBackground(Color(red: 231, green: 226, blue: 0.79), for: .tabBar)
                        .tabItem {
                            Image(systemName: "book.fill")
                            Text("Contacts")
                        }
                
                    // Tab 3: Contribute
                    ContributeView()
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
                    .toolbarBackground(Color(red: 231, green: 226, blue: 0.79), for: .tabBar)
                        .tabItem {
                            Image(systemName: "plus.circle")
                            Text("Contribute")
                        }
                
                    // Tab 4: Profile
                    ProfileView()
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
                    .toolbarBackground(Color(red: 231, green: 226, blue: 0.79), for: .tabBar)
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Profile")
                        }
            }
            .accentColor(.black) // Cor dos ícones ativos
            
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
