import SwiftUI

struct ContactsView: View {
    @State private var selectedTab: Int = 0 // Estado para controlar o item selecionado
    
    var body: some View {
        NavigationView{
            ZStack {
                // Fundo da tela
                backgroundColor
                    .edgesIgnoringSafeArea(.all)
                
                VStack (spacing:25){
                    // Conteúdo principal
                    tituloText
                    
                    // Botão Central
                    card1Button
                    
                    // Botão Report
                    card2Button
                    
                    // Botão Re-ciclo
                    card3Button
                    // Botão Tree on My Sidewalk
                    card4Button
                    
                    Spacer() // Empurra o conteúdo para cima
                    
                
                }
            }
        }
    }
    
    //MARK: - Componentes
    
    private var backgroundColor: some View {
        Color(red: 215/255, green: 221/255, blue: 159/255)
    }
    
    private var tituloText: some View {
        Text("Contacts")
            .font(.custom("Arial Rounded MT Bold", size: 24))
            .foregroundColor(Color(red: 207/255, green: 80/255, blue: 102/255))
            .padding(.top, 20)
            .padding(.leading, -180)
            .padding(.bottom, 30)
        
    }
    
    private var card1Button: some View {
        
            
                // Ação para o botão "Central"
            NavigationLink(destination: CentralView()) { // Navega para CentralView
                VStack {
                    Image("reportButton") // Substitua pelo nome da sua imagem
                        .scaledToFit()
                        .frame(height: 150)
                }
                .frame(width: 353, height: 121)
                .cornerRadius(10)
                .shadow(radius: 1, x: 0, y: 4)
            }
//            .padding(.bottom, 20)
    }
    
    private var card2Button: some View {
        Button(action: {
            // Ação para o botão "Report"
        }) {
            VStack {
                Image("centralButton") // Substitua pelo nome da sua imagem
                    .scaledToFit()
                    .frame(height: 150)
            }
            .frame(width: 352, height: 121)
            .cornerRadius(10)
            .shadow(radius: 1, x: 0, y: 4)
        }
//        .padding(.bottom, 20)
    }
    
    private var card3Button: some View {
        Button(action: {
            // Ação para o botão "Re-ciclo"
        }) {
            VStack {
                Image("Re-cicloButton") // Substitua pelo nome da sua imagem
                    .scaledToFit()
                    .frame(height: 150)
            }
            .frame(width: 352, height: 121)
            .cornerRadius(10)
            .shadow(radius: 1, x: 0, y: 4)
        }
//        .padding(.bottom, 20)
    }
    
    private var card4Button: some View {
        Button(action: {
            // Ação para o botão "Re-ciclo"
        }) {
            VStack {
                Image("tree") // Substitua pelo nome da sua imagem
                    .scaledToFit()
                    .frame(height: 150)
            }
            .frame(width: 352, height: 121)
            .cornerRadius(10)
            .shadow(radius: 1, x: 0, y: 4)
        }
//        .padding(.bottom, 20)
    }
}

#Preview {
    ContactsView()
}
