import SwiftUI

struct CentralView: View {
    var body: some View {
        NavigationView{
            ZStack{
                //Fundo da tela
                backgroundColor
                    .edgesIgnoringSafeArea(.all)
                
                LivroVolta
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


//MARK: - Componentes

private var backgroundColor: some View {
    Color(red: 215/255, green: 221/255, blue: 159/255)
    
    
}

private var LivroVolta: some View{
    VStack(spacing: 20) {
        // Texto personalizado no topo da tela
        HStack{
            ZStack{
                Text("Report environmental \nirregularities!")
                    .font(Font.custom("Arial Rounded MT Bold", size: 24))
                    .foregroundColor(Color(red: 0.81, green: 0.31, blue: 0.4))
                    .frame(width: 272, alignment: .topLeading)
                    .padding(.top, 20) // Adiciona espaço no topo
                    .padding(.trailing, 90)
                
                Image("Megafone")
                    .padding(.leading, 270)
            }
            Spacer()
            // Empurra o conteúdo para cima
        }.padding(.top, 20)
        HStack{
            Text("Environmental complaints are actions or omissions that violate environmental protection laws, as per Federal Decree No. 6,514/2008.")
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .foregroundColor(.black)
                .frame(width: 348, alignment: .topLeading)
                .fixedSize(horizontal: false, vertical: true)
        }
        HStack{
            Text("In Ceará, Semace is responsible for investigating these complaints, except in municipalities that carry out their own inspections, as per Complementary Law No. 140/2011.")
              .font(Font.custom("Arial Rounded MT Bold", size: 16))
              .foregroundColor(.black)
              .frame(width: 348, alignment: .topLeading)
              .fixedSize(horizontal: false, vertical: true)

        }
        HStack{
            Text("To file a complaint with Semace, it’s necessary to provide accurate information and obtain a protocol number for follow-up.")
              .font(Font.custom("Arial Rounded MT Bold", size: 16))
              .foregroundColor(.black)
              .frame(width: 348, alignment: .topLeading)
              .fixedSize(horizontal: false, vertical: true)

        }
        
            VStack{
                HStack{
                    Text("The service channels include:")
                        .font(Font.custom("Arial Rounded MT Bold", size: 16))
                        .foregroundColor(.black)
                        .padding(.trailing,115)
                        .padding(.bottom,5)
                }
                
                HStack{
                    HStack(alignment: .top) {
                        Image(systemName: "circle.fill") // Marcador
                            .font(.system(size: 6))
                            .padding(.leading, 40)
                    }
                    
                    HStack{
                        Text("Disque Natureza:")
                            .font(Font.custom("Arial Rounded MT Bold", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: true, vertical: false)
                        
                        Text("0800.275 2233 ")
                            .font(Font.custom("SF Pro Rounded", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: true, vertical: false)
                            .padding(.trailing, 10)
                    }
                } .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom, 5)
                
                HStack{
                    HStack(alignment: .top) {
                        Image(systemName: "circle.fill") // Marcador
                            .font(.system(size: 6))
                            .padding(.leading, 40)
                    }
                    HStack{
                        Text("Ouvidoria Semace:")
                            .font(Font.custom("Arial Rounded MT Bold", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: true, vertical: false)
                        
                        Text("(85) 3101-5520")
                            .font(Font.custom("SF Pro Rounded", size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: true, vertical: false)
                            .padding(.trailing, 10)
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
                
                HStack{
                    HStack(alignment: .top) {
                        Image(systemName: "circle.fill") // Marcador
                            .font(.system(size: 6))
                            .padding(.leading, 40)
                    }
                    HStack{
                        Text("Website Semace:")
                          .font(Font.custom("Arial Rounded MT Bold", size: 16))
                          .foregroundColor(.black)
                          .frame(maxWidth: .infinity, alignment: .center)
                          .fixedSize(horizontal: true, vertical: false)
                        
                        Text("www.ouvidoria.ce.gov.br")
                          .font(Font.custom("SF Pro Rounded", size: 16))
                          .foregroundColor(.black)
                          .frame(maxWidth: .infinity, alignment: .center)
                          .fixedSize(horizontal: true, vertical: false)
                          .padding(.trailing, 10)
                        
                    }
                } .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 7)
                
         }
        VStack(spacing: 10){
            HStack{
                Text("In person, at the following addresses:")
                    .font(Font.custom("Arial Rounded MT Bold", size: 16))
                    .foregroundColor(.black)
                    .padding(.trailing,55)
            }
            
            .padding(.bottom, 10)

            HStack{
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill") // Marcador
                        .font(.system(size: 6))
                        .padding(.leading, 40)
                }
                HStack {
                    (Text("Fortaleza: ")
                        .font(Font.custom("Arial Rounded MT Bold", size: 16))
                        .foregroundColor(.black) +
                     Text("Rua Jaime Benévolo - 1400, \nBairro de Fátima, 60050-155")
                        .font(Font.custom("SF Pro Rounded", size: 16))
                        .foregroundColor(.black))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.trailing, 65)
                }
            }
        }
            HStack{
                
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill") // Marcador
                        .font(.system(size: 6))
                        .padding(.leading, 40)
                }
                HStack {
                    (Text("Sobral: ")
                        .font(Font.custom("Arial Rounded MT Bold", size: 16))
                        .foregroundColor(.black) +
                     Text("Rua Corina Dantas - 296, Derby \nClube, 62042-220")
                        .font(Font.custom("SF Pro Rounded", size: 16))
                        .foregroundColor(.black))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.trailing, 65)
                }
            }
            HStack{
                
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill") // Marcador
                        .font(.system(size: 6))
                        .padding(.leading, 40)
                }
                HStack {
                    (Text("Crato: ")
                        .font(Font.custom("Arial Rounded MT Bold", size: 16))
                        .foregroundColor(.black) +
                     Text("Av.Pedro Felício Cavalcante - 2530,\nBairro Parque Granjeiro, 63106-010")
                        .font(Font.custom("SF Pro Rounded", size: 16))
                        .foregroundColor(.black))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.leading, -50)
                }

            }
        Spacer()
        Spacer()
    }
  
    }

#Preview {
     CentralView()
}

