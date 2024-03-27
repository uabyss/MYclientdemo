//
//  RandomUser.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 05/05/2022.
//

import Foundation

class RandomUserAPI {
    func getRandomUser(completion: @escaping(Result<RandomUserResponse, Error>) -> Void) {
        print("call getRandomuser APi")
        guard let url = URL(string:"https://randomuser.me/api/?nat=gb") else {
            print("Invalid URL!"); return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error)  in
            if let error = error {
                print("error")
                completion(.failure(error.localizedDescription as! Error))
                return
            }
            
            do {
                let randomUser = try JSONDecoder().decode(RandomUserResponse.self, from: data!)
                completion(.success(randomUser))
                print(randomUser)
            } catch let jsonError {
                completion(.failure(jsonError.localizedDescription as! Error))
            }
        }.resume()
    }
}
