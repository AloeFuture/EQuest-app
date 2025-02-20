import SwiftUI

struct ContributeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Contribute")
                .font(Font.custom("Arial Rounded MT Bold", size: 24))
                .foregroundColor(Color(red: 0.21, green: 0.52, blue: 0.42))
                .fontWeight(.bold)
                .padding(.leading)

            VStack(spacing: 16) {
                ContributeButton(imageName: "Button1", action: {
                    print("Learn how to start a sustainable lifestyle tapped")
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
            .padding(.horizontal)

            Spacer() // Para empurrar os botões para o topo
        }
        .background(Color(red: 0.84, green: 0.87, blue: 0.62))
        .navigationBarHidden(true)
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
