//
//  EfHubHeaderView.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 05/05/2022.
//

import SwiftUI

let pink = Color(red: 0.20, green: 0.34, blue: 0.60)

struct ChaseHeaderView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("lifestyleAppHeader")
                        .frame(width: 147, height:30, alignment: .center)
                        //.frame()
                       // .scaledToFit()
                        .padding(
                            EdgeInsets(top: 10, leading: 124, bottom: 10, trailing: 10)
                        )
//                    Text("EF Hub")
//                        .font(Font.custom("Poppins", size: 32, relativeTo: .title))
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.white)
                    Spacer()
                }
                
                Spacer()
            }
        }
        
        
    }
}

struct ChaseHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ChaseHeaderView()
    }
}
