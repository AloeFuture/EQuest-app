import SwiftUI

struct ContributeView: View {
    @State var goToReportOne = true
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("Contribute")
                    .font(Font.custom("Arial Rounded MT Bold", size: 24))
                    .foregroundColor(Color(red: 0.21, green: 0.52, blue: 0.42))
                    .fontWeight(.bold)
                    .padding(.leading)

                VStack(spacing: 16) {
                    ContributeButton(imageName: "Button1", action: {
                        goToReportOne = true
                    })

                    ContributeButton(imageName: "Button2", action: {
                        print("What is Waste Sorting? tapped")
                    })

                    ContributeButton(imageName: "Button3", action: {
                        print("Selective waste bins tapped")
                    })

                    ContributeButton(imageName: "Button4", action: {
                        print("Cycling and sustainability tapped")
                    })
                }
                .padding(.top, 30 )
                .padding(.horizontal)

                Spacer() // Para empurrar os botões para o topo
            }
            .navigationTitle("Contribute")
            .background(Color(red: 0.84, green: 0.87, blue: 0.62))
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $goToReportOne) {
                CReport1()
            }

        }
        .accentColor(.brown)
    }
}

struct ContributeButton: View {
    var imageName: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ContributeView_Previews: PreviewProvider {
    static var previews: some View {
        ContributeView()
    }
}
