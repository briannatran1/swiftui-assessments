//
//  ApiCall.swift
//  Assessments
//
//  Created by bri on 11/1/23.
//

import Foundation
import SwiftUI

let token = "544d4d1b2635c36b9aee42dfedc884d44bd3e1ae"

func fetchAssessments(completionHandler: @escaping ([Assessment]) -> Void) {
//    var lotsOfAssessments: [Assessment]
    let url = URL(string: "http://localhost:8000/api/assessmentsessions")!
    
    var request = URLRequest(url: url)
    request.allHTTPHeaderFields = [
        "Content-Type": "application/json",
        "Authorization": "Token \(token)",
        "Accept": "application/json"
    ]
    
    URLSession.shared.dataTask(with: request) {(data, response, error) in
        guard error == nil else { return }
        guard let data = data, let _ = response else { return }
        
        //handle data
        do {
            let codabledata = try JSONDecoder().decode(AssessmentsResponse.self, from: data)
//            completionHandler(lotsOfAssessments)
            print(codabledata)
        }
        catch let parsingError {
            print("Error", parsingError)
        }
    }
    .resume()
}

//fetchAssessments()
