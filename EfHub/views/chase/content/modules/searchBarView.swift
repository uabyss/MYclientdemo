//
//  searchBarView.swift
//  EfHub
//
//  Created by Jake Figg on 17/02/2024.


import SwiftUI

struct searchBarView: View {
    var body: some View {
             VStack(alignment: .leading, spacing: 0.0) {
                 // Text("Accounts")
                 //   .font(.title)
            //.fontWeight(.bold)
             //   .foregroundColor(Color.ui.chaseColour2)
        //      .padding([.top, .leading, .bottom])
        
        //  VStack {
        //  ChaseAccountPillView()
        // ChaseAccountPillView(
        // textHeader: "Lucy's Mortgage", textSubHeader: "Monthly Repayments", textValue: "£1,500")
        
               VStack(alignment: .center, spacing: 0.0){
                  ZStack{
                   Color(red: 1, green: 1, blue: 1)
        
              //   VStack(alignment:.leading, spacing: 0.0){
               //   Text("Spending Breakdown")
               //  .font(.title)
               //   .fontWeight(.bold)
              // .foregroundColor(.white)
             // .padding([.top, .leading, .bottom])
        
        
        
          VStack {
             Image("searchBar")
                .resizable()
               .scaledToFit()
               .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
        
         //  Text("If you are searching for a new property, we have the knowledge and expertise you need, to help your dream home become a reality.")
         //      .font(.custom("Poppins", size: 16))
          //    .fontWeight(.light)
          //  .foregroundColor(.white)
          // .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
        
   // Image("hamptonscouch")
    //        .resizable()
    //    .scaledToFit()
      //    .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
     
        
        
        
                }
                }
                }
            }
          }
    }
        
    //     }
        
        struct searchBarView_Previews: PreviewProvider {
           static var previews: some View {
               VStack {
                  ChaseAccountView()
                 Spacer()
             }
        
        }
    }
       
