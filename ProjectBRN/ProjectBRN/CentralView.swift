import SwiftUI

struct ReportView: View {
    var body: some View {
        NavigationView{
            ZStack{
                
                
                //Fundo da tela
                backgroundColor
            }
          //  .navigationTitle("Report environmental irregularities!")
            .toolbar {
                // Botão de voltar personalizado
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // Ação para voltar (não é necessária aqui, pois o NavigationLink já lida com isso)
                    }) {
                        HStack {
                            Image(systemName: "arrow.backward.circle") // Ícone de voltar
                                .foregroundColor(Color(red: 123/255, green: 76/255, blue: 58/255))
                            Text("Contacts") // Texto personalizado
                                .font(.custom("SF Pro", size: 17))
                                .foregroundColor(Color(red: 123/255, green: 76/255, blue: 58/255))
                        }
                    }
                }
            }
        }
    }
}



private var backgroundColor: some View {
    Color(red: 215/255, green: 221/255, blue: 159/255)
        .edgesIgnoringSafeArea(.all)
    
}

    
  
    

#Preview {
     ReportView()
}

