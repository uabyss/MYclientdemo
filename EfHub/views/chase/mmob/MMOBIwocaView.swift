//
//  ContentView.swift
//  Demo AIA 2
//
//  Created by Atiqah on 21/03/2024.
//

import SwiftUI

struct MMOBIwocaView: View {
    @State private var showingDonationDP = false
    //making a new comment
    var body: some View {
        //Top and bottom homescreen
        ZStack {
            Image("background3")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("homescreenTop 1")
                   .resizable()
                    
                    .frame(width: 400.0, height: 250)
                    .padding(.bottom, 0.0)
                 //Spacer()
                HStack (alignment: .center, spacing: 18) {
                 
                    //Donation
                    Spacer()
                    Button(action: {showingDonationDP.toggle()}) {
                        Image("donationButton3")
                    }
                        
                  
                    .sheet(isPresented: $showingDonationDP) {
                      mmobDonationDPView()
                    }
                   
                    
                    Button {
                        financing()
                    } label: {
                        Image("financingButton2")
                    }
                   
                   
                    Button {
                        transfer()
                    } label: {
                        Image("transferButton2")
                            
                    }
                  
                   
                    Button {
                        more()
                    } label: {
                        Image("moreButton2")
                    }
                    Spacer()
                }
                Spacer()
                
                Image("homescreenBottom 1")
                    .resizable()
                    .frame(width: 400.0, height: 350)
                    .padding(.top, -30.0)
                    .padding(/*@START_MENU_TOKEN@*/.bottom, 30.0/*@END_MENU_TOKEN@*/)
                
                
                
            }
        }
        
        
    }

    
    //function financing
    func financing () {
        print("Financing Journey")
    }
    
    //function doctor
    func transfer () {
        print("Empty Transfer Journey")
    }
    
    //function More
    func more () {
        print("Empty More Journey")
    }
    
    }


struct MMOBIwocaView_Previews: PreviewProvider {
    static var previews: some View {
        MMOBIwocaView()
    }
}
