//
//  EfHubNavigationView.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 05/05/2022.
//

import SwiftUI

struct ChaseNavigationView: View {
    
    init(){
        UITabBar.appearance().barTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)
        UITabBar.appearance().backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.00)
        UITabBar.appearance().unselectedItemTintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.40)
    }
    var body: some View {
        TabView {
            
            
            ChaseHomeView()
                .tabItem {
                    Label("", systemImage: "command.circle")
                        .imageScale(.large)
                        .padding(.top, 10)
                    
                    
                }
            
            MMOBIwocaView()
                .tabItem {
                    Label("", systemImage: "heart")
                        .imageScale(.large)
                        .padding(.top, 10)
                }
            
            MMOBEcosystemView()
                .tabItem {
                    Label("", systemImage: "bubble.left")
                        .imageScale(.large)
                        .padding(.top, 10)
                }
            
            MMOBEcosystemView()
                .tabItem {
                    Label("", systemImage: "gearshape")
                        .imageScale(.large)
                        .padding(.top, 10)
                }
            
            
            
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.00)
            UITabBar.appearance().unselectedItemTintColor = UIColor(red: 0.50, green: 0.53, blue: 0.58, alpha: 1.00)
//            UITabBar.appearance().accentColor = UIColor(red: 0.07, green: 0.42, blue: 0.77, alpha: 1.00)

        }

        .accentColor(Color(red: 0.92, green: 0.34, blue: 0.34))
    }
}

struct ChaseNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ChaseNavigationView()
    }
}

