//
//  CReport3.swift
//  Equest-Test
//
//  Created by Found on 20/02/25.
//

import SwiftUI

struct CReport3: View {
    var body: some View {
        ZStack {
            
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
                VStack(alignment: .leading, spacing: 16) {
                    
                    HStack{
                        Text("Selective waste bin")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.21, green: 0.52, blue: 0.42))
                            .offset(CGSize(width: 0, height: -25))

                        Spacer()
                        
                        Image("CReport3")
                            .offset(CGSize(width: 0, height: -50))
                    }
                    .padding(.bottom, 0.4)
                    VStack{
                        
                    }
                    Text("""
                    Waste sorting bins enable the separation of recyclable and non-recyclable materials, preventing contamination and allowing reusable waste to be transformed into new products. This reduces the need to produce new materials.
                    """)
                    .font(.body)
                    .fontWeight(.semibold)
                    .offset(CGSize(width: 0, height: -70))

                    Text("Each bin color has a specific meaning, making it essential to understand their purpose for proper waste separation. See below:")
                        .font(.body)
                        .fontWeight(.semibold)
                        .offset(CGSize(width: 0, height: -70))

                    VStack(alignment: .leading, spacing: 8) {
                        Text("\u{2022} Blue: Papers;").font(.body)
                        Text("\u{2022} Red: Plastics;").font(.body)
                        Text("\u{2022} Yellow: Metals;").font(.body)
                        Text("\u{2022} Green: Glass;").font(.body)
                        Text("\u{2022} Brown: Organics;").font(.body)
                        Text("\u{2022} Grey: Non-recyclable waste;").font(.body)
                        Text("\u{2022} Black: Wood;").font(.body)
                        Text("\u{2022} White: Hospital and health service waste;").font(.body)
                        Text("\u{2022} Orange: Hazardous waste (e.g., batteries);").font(.body)
                        Text("\u{2022} Purple: Radioactive waste.").font(.body)
                    }
                    .padding(.top, 8)
                    .offset(CGSize(width: 0, height: -70))
                }
                .padding()
                .padding(.bottom, 100)

        }
    }
}

#Preview {
    CReport3()
}
