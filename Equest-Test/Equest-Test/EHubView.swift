//
//  ContributeView.swift
//  Equest-Test
//
//  Created by iredefbmac_31 on 19/02/25.
//

import SwiftUI

struct EHubView: View {
    
    @State var goToDailyMissions = false
    @State var goToProjects = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                backgroundColor
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Hello, exemplebjork10!")
                      .font(Font.custom("Arial Rounded MT Bold", size: 24))
                      .foregroundColor(Color(red: 0.49, green: 0.14, blue: 0.09))

                    Text("Check your missions and contribute in your city!")
                      .font(
                        Font.custom("SF Pro Rounded", size: 22)
                          .weight(.medium)
                      )
                      .foregroundColor(.black)
                      .frame(width: 353, alignment: .topLeading)

                    VStack(spacing: 16) {
                        Button(action: {
                            goToDailyMissions = true
                        }) {
                            VStack(spacing: 0) {
                                Text("Daily Missions")
                                  .font(Font.custom("Arial Rounded MT Bold", size: 34))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.2, green: 0.17, blue: 0.25))
                                
                                Image("EHub1") // Ícone representativo
                                    .frame(width: 250, height: 177)

                                
                            }
                            .frame(maxWidth: .infinity, minHeight: 150)
                            .background(Color(red: 0.44, green: 0.73, blue: 0.4))
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        }

                        Button(action: {
                            goToProjects = true
                        }) {
                            VStack {
                                Text("Projects")
                                  .font(Font.custom("Arial Rounded MT Bold", size: 34))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.2, green: 0.17, blue: 0.25))
                                
                                Image("EHub2") // Ícone representativo
                                    .frame(width: 362.39, height: 161)

                            }
                            .frame(maxWidth: .infinity, minHeight: 150)
                            .background(Color(red: 0.87, green: 0.94, blue: 0.96))
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        }
                    }

                    Spacer()
                }
                .padding()
            }
            .navigationTitle("EHub")
            .background(Color(red: 0.84, green: 0.87, blue: 0.62))
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $goToDailyMissions) {
                DailyMissionsView()
            }
            .navigationDestination(isPresented: $goToProjects) {
                ProjectsView()
            }
        }.accentColor(.brown)
    }
        
}

struct EHubView_Previews: PreviewProvider {
    static var previews: some View {
        EHubView()
    }
}
