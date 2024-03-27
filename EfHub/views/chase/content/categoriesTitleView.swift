//
//  categoriesTitleView.swift
//  EfHub
//
//  Created by Jake Figg on 17/02/2024.
//

import SwiftUI

struct categoriesTitleView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0) {
            Text("Categories")
                .font(.system(size: 24))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                .padding([.top, .leading, .bottom])
                .padding(.leading, 20)
        }
        
        
        struct categoriesTitleView_Previews: PreviewProvider {
            static var previews: some View {
                categoriesTitleView()
            }
        }
        }
}


