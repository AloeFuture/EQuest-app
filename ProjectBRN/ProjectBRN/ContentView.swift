import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var navigateToApp = false // Variável para controlar a navegação

    var body: some View {
        
        
        NavigationView { // Adiciona um NavigationView para permitir a navegação
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.top, -133)
                    .padding(.top, 70)
                
                Text("Enable location services")
                    .font(Font.custom("Arial Rounded MT Bold", size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.25, green: 0.46, blue: 0.22))
                    .padding(.bottom, 22)
                
                Text("We use your location to show Bicicletar and Ecopontos in your area")
                    .font(Font.custom("Arial Rounded MT Bold", size: 17))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.1, green: 0.21, blue: 0.02))
                    .frame(width: 393, alignment: .center)
                    .padding(.bottom, 20)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 243, height: 241)
                    .background(
                        Image("homem")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 243, height: 241)
                            .clipped()
                    )
                
                ZStack {
                    Button(action: {
                        showAlert = true
                    }) {
                        Text("Enable")
                            .padding(.horizontal, 24)
                            .padding(.vertical, 10)
                            .frame(width: 353, height: 56)
                            .foregroundColor(Color(red: 25/255, green: 54/255, blue: 6/255))
                            .background(Color(red: 92/255, green: 176/255, blue: 80/255))
                            .cornerRadius(10)
                            .padding(.top, 26)
                            .padding(.bottom, 26)
                            .shadow(radius: 1, x: 0, y: 4)
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Allow \"EQuest\" to use your location?"),
                            message: Text("EQuest needs your precise location to find Bicicletar's bike and Ecopontos in your area"),
                            primaryButton: .default(Text("Allow while using app"), action: {
                                // Ação ao pressionar "Allow while using app"
                                navigateToApp = true // Ativa a navegação
                            }),
                            secondaryButton: .cancel(Text("Don't allow"))
                        )
                    }
                }
                
                
                
                // NavigationLink para a próxima tela
                NavigationLink(destination: NavigationBarView(), isActive: $navigateToApp) {
                        EmptyView()
                               }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 215/255, green: 221/255, blue: 159/255))
        }
    }
}



#Preview {
    ContentView()
}
