//
//  apiHelper.swift
//  Assessments
//
//  Created by Evan Ishibashi on 10/31/23.
//

import Foundation



func getRequest(callback: @escaping (TokenResponse?) -> Void) {
//    let theToken =  ""
    let theToken =  "4a41260238aecf13a8a10a0c1df96c6e68571536"
    
    if let url = URL(string: "http://127.0.0.1:8000/api/assessmentsessions") {
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = [
            "Content-Type": "application/json",
            "accept": "application/json",
            "Authorization":"Token \(theToken)"
        ]
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard error == nil else { return }
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase  // <-- here
                let codabledata = try decoder.decode(TokenResponse.self, from: data)
                callback(codabledata)  // <-- here
            } catch {
                print(error)
                callback(nil)  // <-- here
            }
        }.resume()
    }
}

struct ApiHelper: View {
    getRequest() { results in
        print(results)
    }
}

