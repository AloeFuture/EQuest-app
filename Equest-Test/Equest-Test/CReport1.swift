                //
                //  CReport1.swift
                //  Equest-Test
                //
                //  Created by Found on 20/02/25.
                //

                import SwiftUI

                struct CReport1: View {
                    var body: some View {
                        ZStack{
                            
                            backgroundColor
                                .edgesIgnoringSafeArea(.all)
                            
                            
                            VStack(alignment: .leading, spacing: 16) {
                                
                                HStack() {
                                    Text("Learn how to start a sustainable lifestyle")
//                                        .padding(.top, 60)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red: 0.21, green: 0.52, blue: 0.42))
                                    Spacer()
                                    Image("CReport1_image")
//                                        .offset(CGSize(width: 0, height: -30))
                                }
//                                .border(.blue, width: 2)
                                
                                
                                
                                Text("Changing habits can be challenging, but small steps can make a big environmental impact.")
                                    .font(.body)
                                    .fontWeight(.bold)
                                
                                VStack(alignment: .leading, spacing: 12) {
                                    InfoItem(title: "Eat less meat.", description: "Meat is expensive and bad for the environment. 70 per cent of the Amazon rainforest has been destroyed so that people can raise cows.")
                                    InfoItem(title: "Reduce food waste.", description: "Try to limit shopping for only what you need. Composting is another effective way to reduce food waste.")
                                    InfoItem(title: "Save Energy.", description: "One of the easiest ways to use less energy and reduce your carbon emissions is to simply switch things off that you aren't using.")
                                    InfoItem(title: "Use green cleaners.", description: "Products with readily biodegradable formulas use ingredients that won't stick around in our ecosystems.")
                                    InfoItem(title: "Choose organic.", description: "From coffee to fruit to clothing, choosing organic products helps reduce your impact on wildlife and the planet.")
                                    InfoItem(title: "Recycle everything you can.", description: "Before you throw out anything consider if it can be recycled.")
                                }
                                
                                Spacer()
                            }
                            .padding()
                        }
                    }
                }

                struct InfoItem: View {
                    var title: String
                    var description: String

                    var body: some View {
                        VStack(alignment: .leading) {
                            Text(title)
                                .fontWeight(.bold)
                            Text(description)
                                .font(.body)
                        }
                    }
                }

public var backgroundColor: some View {
    Color(red: 215/255, green: 221/255, blue: 159/255)
}


                #Preview {
                    CReport1()
                }
