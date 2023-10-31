//
//  ViewModel.swift
//  Assessments
//
//  Created by bri on 10/31/23.
//

import Foundation
import SwiftUI

struct Assessment: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var status: String
    var description: String
    var start_at: String
    var end_at: String
}

class ViewModel: ObservableObject {
    @Published var assessments: [Assessment] = []
    
    func fetchData() {
        guard let url = URL(string: "http://localhost:8000/api/assessmentsessions") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _,
            error in
            guard let data = data, error == nil else {
                return
            }
            
            //convert to JSON
            do {
                let assessments = try JSONDecoder().decode([Assessment].self,
                                                           from: data)
                DispatchQueue.main.async {
                    self?.assessments = assessments
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}


