//
//  servicesOptionsGridView.swift
//  EfHub
//
//  Created by Jake Figg on 17/02/2024.
//

import SwiftUI

struct servicesGroupOptions2: View {
    @State private var showingWealth = false
    @State private var showingTakaful = false
    var body: some View {
            HStack {
                Button(action: {showingTakaful.toggle()})
                {
                    Image("takafulTab")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170, height: 170)
                        .clipped()
                        .padding(.top, 0)
                }
                
                Button(action: {showingWealth.toggle()})
                {
                    Image("wealthTab")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170, height: 170)
                        .clipped()
                        .padding(.top, 0)
                }
                
            }
            .foregroundColor(Color.white)
            .padding()
            .sheet(isPresented: $showingWealth) {
                mmobWealthView()
            }
            .sheet(isPresented: $showingTakaful) {
                mmobTakafulView()
            }
    }
    
    
    struct servicesGroupOptions2_Previews: PreviewProvider {
        static var previews: some View {
            servicesGroupOptions2()
        }
    }
}
