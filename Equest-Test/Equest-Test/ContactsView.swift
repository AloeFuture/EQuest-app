//
//  ContactsView.swift
//  Equest-Test
//
//  Created by iredefbmac_31 on 19/02/25.
//

import SwiftUI

struct ContactsView: View {
    @State var goToContactstOne = false
    @State var goToContactsTwo = false
    @State var goToContactsThree = false
    @State var goToContactsFour = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("Contacts")
                  .font(Font.custom("Arial Rounded MT Bold", size: 24))
                  .foregroundColor(Color(red: 0.81, green: 0.31, blue: 0.4))
                  .padding(.leading)

                VStack(spacing: 16) {
                    ContributeButton(imageName: "Button5", action: {
                        goToContactstOne = true
                    })

                    ContributeButton(imageName: "Button6", action: {
                        goToContactsTwo = true
                    })

                    ContributeButton(imageName: "Button7", action: {
                        goToContactsThree = true
                    })

                    ContributeButton(imageName: "Button8", action: {
                        goToContactsFour = true
                    })
                }
                .padding(.top, 30 )
                .padding(.horizontal)

                Spacer() // Para empurrar os botões para o topo
            }
            .navigationTitle("Contribute")
            .background(Color(red: 0.84, green: 0.87, blue: 0.62))
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $goToContactstOne) {
                CONReport1()
            }
            .navigationDestination(isPresented: $goToContactsTwo) {
                CONReport2()
            }
            .navigationDestination(isPresented: $goToContactsThree) {
                CONReport3()
            }
            .navigationDestination(isPresented: $goToContactsFour) {
                CONReport4()
            }

        }
        .accentColor(.brown)
    }
}




#Preview {
    ContactsView()
}
