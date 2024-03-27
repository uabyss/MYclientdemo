//
//  ChaseAccountModulePill.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 19/05/2022.
//

import SwiftUI

struct ChaseAccountPillView: View {
    var textHeader = "My Business Current Account"
    var textSubHeader = "Current Account (8045)"
    var textValue = "£1,804"

    
    var body: some View {
        
        HStack(alignment: .top) {
            
            VStack(alignment: .leading) {
                Text(textHeader)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.212, green: 0.365, blue: 0.617))
                    .multilineTextAlignment(.leading)
                Text(textSubHeader)
                

                    .foregroundColor(Color(red: 0.212, green: 0.365, blue: 0.617))
                    .multilineTextAlignment(.leading)
            }
            .padding()
            Spacer()
            Text(textValue)
                .foregroundColor(Color(red: 0.212, green: 0.365, blue: 0.617))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            
            
        }
        
        
        .frame(width: nil, height: 70, alignment: .center)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(
            color: Color(red:0, green: 0, blue: 0).opacity(0.2),
            radius: 5
        )
        .padding(.horizontal)
        
    }
}

struct ChaseAccountModulePillView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ChaseAccountPillView()
            ChaseAccountPillView()
        }
        
        
    }
}
