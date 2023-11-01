//
//  ApiCall.swift
//  Assessments
//
//  Created by bri on 11/1/23.
//

import Foundation
import SwiftUI

func getAssessments() async throws -> AssessmentsResponse {
//        let token = "4a41260238aecf13a8a10a0c1df96c6e68571536"
        let token = "544d4d1b2635c36b9aee42dfedc884d44bd3e1ae"
        guard let url = URL(string: "http://localhost:8000/api/assessmentsessions/") else {
            fatalError("Invalid URL")
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("token \(token)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "accept")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let (data, _) = try await URLSession.shared.data(for: request)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let assessmentData = try decoder.decode(AssessmentsResponse.self, from: data)
        return assessmentData
}