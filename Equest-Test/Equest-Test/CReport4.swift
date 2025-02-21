//
//  CReport4.swift
//  Equest-Test
//
//  Created by Found on 20/02/25.
//

import SwiftUI

struct CReport4: View {
    var body: some View {
        ZStack {
            
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
                VStack(alignment: .leading, spacing: 16) {
                    HStack{
                        Text("Cycling and sustainability")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.21, green: 0.52, blue: 0.42))
                        
                        Spacer()
                        
                        Image("CReport4")
                    }
                    

                    Text("""
                    Cycling offers a sustainable, low-carbon transportation solution, addressing critical global challenges like climate change, air pollution, and health issues from inactivity.
                    """)
                    .font(.body)

                    Text("It’s a powerful way to promote sustainability while benefiting both personal health and the planet. Here’s why:")
                        .font(.body)
                        .fontWeight(.semibold)

                    VStack(alignment: .leading, spacing: 8) {
                        Text("\u{2022} Reduces carbon emissions: Bikes produce zero emissions, helping to lower air pollution and combat climate change").font(.body)
                        Text("\u{2022} Improves health: Cycling is a great form of exercise, boosting cardiovascular health, strength and mental well-being").font(.body)
                        Text("\u{2022} Decreases traffic congestion: Fewer cars on the road mean less traffic and lower overall emissions").font(.body)
                        Text("\u{2022} Saves resources: Unlike cars, bicycles require minimal materials to produce and maintain, reducing resource consumption").font(.body)
                    }
                    .padding(.top, 8)
                }
                .padding()
                .padding(.bottom, 200)
        }
        
            
        }
}

#Preview {
    CReport4()
}
