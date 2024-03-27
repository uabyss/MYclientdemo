//
//  ChaseAccountModule.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 19/05/2022.
//

import SwiftUI


struct ChaseAccountView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text("Category")
                .font(.system(size: 24))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                .padding([.leading, .bottom])
                .padding(.leading, 10)
                .padding(.bottom, 5.0)
            
            VStack {
                ChaseAccountPillView()
                ChaseAccountPillView(
                textHeader: "Escrow Account", textSubHeader: "Escrow Account (7023) ", textValue: "£16,582")
                .foregroundColor(Color(red: 0.212, green: 0.365, blue: 0.617))
                
           
                

            }
        }
    }
}

struct ChaseAccountModuleView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ChaseAccountView()
//            Spacer()
        }
        
    }
}
