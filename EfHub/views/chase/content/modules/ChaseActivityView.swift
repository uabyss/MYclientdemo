//
//  ChaseActivitiyView.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 19/05/2022.
//

import SwiftUI

struct ChaseActivityView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text("Popular")
                .font(.system(size: 28))
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading, 10.0)
            
            
            VStack (spacing: 0.0){
                ChaseActivityPillView()
               
              //  ChaseActivityPillView(
               //     textHeader: "Waitrose", textSubHeader: "15:23 | 13 April", textValue: "£16.582", image:"logoWaitrose")
           
                

            }
            VStack(alignment: .leading, spacing:0.0){
                    Text("Categories")
                        .font(.system(size: 28))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .padding(.leading, 10.0)
                }
        }
        .padding(.bottom, 30)
        }
    }


struct ChaseActivitiyView_Previews: PreviewProvider {
    static var previews: some View {
        ChaseActivityView()
    }
}
