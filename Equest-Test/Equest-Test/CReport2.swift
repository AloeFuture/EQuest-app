import SwiftUI

struct CReport2: View {
    var body: some View {
        
        
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
                VStack(alignment: .leading, spacing: 16) {
                    HStack{
                        Text("What is Waste Sorting?")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.21, green: 0.52, blue: 0.42))
                        
                        Spacer()
                        
                        Image("CReport2").offset(CGSize(width: 0, height: -25))
                    }
                    
                    
                    Text("Waste sorting involves separating waste by material — such as plastic, glass, aluminum, paper, and organic waste — into designated bins for proper disposal or recycling. Using color-coded bins helps identify each type.")
                        .font(.body)
                    
                    Text("The goal is to minimize environmental harm by ensuring waste is disposed of correctly, extending the life of materials through recycling, and supporting recycling cooperatives.")
                        .font(.body)
                    
                    Text("It’s a practical way to reduce environmental impact and generate income for communities.")
                        .font(.body)
                    
                    Spacer()
                }
                .padding()
            }
            
        }
}

#Preview {
    CReport2()
}
