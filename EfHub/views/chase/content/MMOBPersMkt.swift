//
//  ChaseAccountView.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 25/05/2022.
//

import SwiftUI

struct MMOBPersMktView: View {
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar
           .appearance()
            .largeTitleTextAttributes = [
                .font : UIFont(name: "Poppins-Bold", size: 32)!,
                .foregroundColor: UIColor(red: 0.18, green: 0.06, blue: 0.36, alpha:1.00)
                
            ]
        
        //Use this if NavigationBarTitle is with displayMode = .inline
        //UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!]
    }
    
    var body: some View {
            HStack(alignment: .top) {
                VStack(alignment:.leading) {
                    
                           Text("Personal")
                                   .font(Font.custom("Poppins", size: 23, relativeTo: .title))
                                   .fontWeight(.semibold)
                                   .frame(alignment: .center)
                                   .foregroundColor(Color( red: 0.212, green: 0.365, blue: 0.627))
                  
             //   Image("mkt")
                    
                    // Text("             Metro Marketplace")
                         //   .font(Font.custom("Poppins", size: 25, relativeTo: .title))
                          //  .fontWeight(.bold)
                          //  .frame(alignment: .center)
                           // .foregroundColor(Color( red: 0.176, green: 0.278, blue: 0.663))
                       // NavigationLink(destination: EFNetworkAiroView()){
                          //  Image("persmkt")
                       // }
                        Text("")
                            .fontWeight(.bold)
                            .foregroundColor(Color.ui.chaseColour2)
                        NavigationLink(destination: MMOBPensionView()){
                            Image("pens")
                        }
                       Text("")
                           .fontWeight(.bold)
                            .foregroundColor(Color.ui.chaseColour2)
                       NavigationLink(destination: MMOBIwocaView()){
                           Image("loans")
                    }
                       Text("")
                           .fontWeight(.bold)
                            .foregroundColor(Color.ui.chaseColour2)
                       NavigationLink(destination: MMOBUinsureView()){
                            Image("contents")
                        }
                    Group {
                        Text("")
                            .fontWeight(.bold)
                           .foregroundColor(Color.ui.chaseColour2)
                       NavigationLink(destination: MMOBLoyaltyView()){
                           Image("loyalty")
                       }
                      //  Text("")
                          //  .fontWeight(.bold)
                          //  .foregroundColor(Color.ui.chaseColour2)
                      //  NavigationLink(destination: EFNetworkAiroView()){
                      //      Image("business")
                   //     }


                    
                        
                        
                        
                        
                        
                        
                    }

                    
                }
                
            }
            
        }
        
    }


struct MMOBPersMkt_Previews: PreviewProvider {
    static var previews: some View {
        MMOBPersMktView()
    }
}



