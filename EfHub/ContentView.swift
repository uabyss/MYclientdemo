//
//  ContentView.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 05/05/2022.
//

import SwiftUI

struct ContentView: View {
    let userDefaults = UserDefaults.standard
    var body: some View {
        
        VStack {
            
//            EfHubHeaderView().frame(height: 48)
//            
//            EfHubNavigationView()
            
        }
        .onAppear() {
            print("call data")
            if (userDefaults.string(forKey: "email") == nil) {
                // we don't have data, calling api
                print("Empty user, retrieving data")
                getRandomUserData()
            } else {
                print("Old user found, not calling API")
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    func getRandomUserData() {
        RandomUserAPI().getRandomUser { (result) in
            switch result {
            case .success(let randomUserApiResponse):
                print(randomUserApiResponse)
                let user = randomUserApiResponse.results[0]
                UserDefaults.standard.set(user.email, forKey: "email")
                UserDefaults.standard.set(user.name.first, forKey: "first_name")
                UserDefaults.standard.set(user.name.last, forKey: "surname")
                UserDefaults.standard.set(user.name.title, forKey: "title")
                UserDefaults.standard.set("", forKey: "building_number")
                UserDefaults.standard.set("", forKey: "address_1")
                UserDefaults.standard.set("", forKey: "town_city")
                UserDefaults.standard.set("", forKey: "postcode")
                
                //                self.user = user
                
                
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }
}


