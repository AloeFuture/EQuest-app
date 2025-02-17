import SwiftUI

struct MenuInicialView: View {
    @State private var selectedTab: Int = 0 // Estado para controlar o item selecionado

        var body: some View {
        ZStack {
            // Fundo da tela
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Conteúdo principal
                mainContent
                
                Spacer() // Empurra o conteúdo para cima
                
               
            }
        }
    }
    
    // MARK: - Componentes
    
    private var backgroundColor: some View {
        Color(red: 215/255, green: 221/255, blue: 159/255)
    }
    
    private var mainContent: some View {
        VStack {
            // Texto de boas-vindas
            welcomeText
            
            // Texto de contribuição
            contributeText
            
            // Botão Daily Missions
            dailyMissionsButton
            
            // Botão Projects
            projectsButton
        }
    }
    
    private var welcomeText: some View {
        Text("Hello, exemplebjork10!")
            .font(.custom("Arial Rounded MT Bold", size: 24))
            .foregroundColor(Color(red: 207/255, green: 80/255, blue: 102/255))
            .padding(.top, 20)
            .padding(.leading, -90)
            .padding(.bottom, -10)
    }
    
    private var contributeText: some View {
        Text("Contribute in your city!")
            .font(.custom("SF Pro Roundded", size: 22))
            .foregroundColor(.black)
            .frame(width: 350, alignment: .topLeading)
            .padding(.top, 20)
            .padding(.bottom, 62)
    }
    
    private var dailyMissionsButton: some View {
        Button(action: {
            // Ação para o botão "Daily Missions"
        }) {
            VStack {
                Image("dm1") // Substitua pelo nome da sua imagem
                    .scaledToFit()
                    .frame(height: 150)
            }
            .frame(width: 352, height: 218)
            .cornerRadius(10)
            .shadow(radius: 1, x: 0, y: 4)
        }
        .padding(.bottom, 10)
    }
    
    private var projectsButton: some View {
        Button(action: {
            // Ação para o botão "Projects"
        }) {
            HStack {
                ZStack {
                    VStack {
                        Image("Projects") // Substitua pelo nome da sua imagem
                            .scaledToFit()
                            .frame(height: 150)
                    }
                    .frame(width: 360, height: 250)
                    .shadow(radius: 1, x: 0, y: 4)
                }
            }
        }
        
        .padding(.bottom, 10)
        .padding(.horizontal, 10)
    }
}


#Preview {
    MenuInicialView()
}
