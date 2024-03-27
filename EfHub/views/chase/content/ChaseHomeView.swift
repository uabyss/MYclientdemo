//
//  EfHubHomeView.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 05/05/2022.
//

import SwiftUI

struct ChaseHomeView: View {
    @State private var showingStepLadder = false
    
    var body: some View {
        
        VStack (spacing: 0) {
            
            ChaseHeaderView().frame(height: 70)
            
            ScrollView(.vertical, showsIndicators: true) {
                searchBarView()
                    .padding(.bottom, 20)
                ChaseActivityView()
                    .padding(.bottom, -20)
                    .padding(.top, 10)
                
                servicesOptionsGridView()
        //            .padding(.bottom, 0)
     //           servicesGroupOptions2()
   //                 .padding(.bottom, 0)
//                ChaseNutmegBannerView()
              .frame(height: 140)
                 .cornerRadius(10)
                 .padding(.trailing, 10)
                 .padding(.bottom, 10)
                seeMoreView()
//                    .onTapGesture {
//                        showingStepLadder.toggle()
//
//
//                    }
//                    .sheet(isPresented: $showingStepLadder) {
//                        EfHubStepLadderModalView()
//                    }
          
               // ChaseAccountView()
            
            //    Spacer()
            }
        }
    }
}

struct ChaseHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ChaseHomeView()
    }
}
