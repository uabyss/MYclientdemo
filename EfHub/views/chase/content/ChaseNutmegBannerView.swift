//
//  ChaseNutmegBannerView.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 26/05/2022.
//

import SwiftUI

struct ChaseNutmegBannerView: View {
    @State private var showingStepLadder = false
    
    var body: some View {
        ZStack {
            Color(red: 0, green: 0, blue: 0)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Image("NutmegLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 87, height:40)
                
                
                Text("We believe investing should be a clear and straightforward experience.")
                    .font(Font.custom("Poppins", size: 14, relativeTo: .title))
                    .fontWeight(.semibold)
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
                HStack {
                    Text("Start investing today!")
                        .font(Font.custom("Poppins", size: 10, relativeTo: .title))
                    
                    Spacer()
                    
                    Button {
                        showingStepLadder.toggle()
         
                    } label: {
                        Text("Find out more")
                            .font(Font.custom("Poppins", size: 14, relativeTo: .title))
                            .fontWeight(.semibold)
                        
                    }
                    
                    .padding()
                    .background(Color(red: 0.18, green: 0.70, blue: 0.32))
                    .clipShape(Capsule())
                }
                
                
            }
            .foregroundColor(Color.white)
            .padding()
            .sheet(isPresented: $showingStepLadder) {
//                MMOBPensionView()
//                MMOBNutmegView()
            }
            
        }
        
        
    }
}

struct ChaseNutmegBannerView_Previews: PreviewProvider {
    static var previews: some View {
        ChaseNutmegBannerView()
    }
}

