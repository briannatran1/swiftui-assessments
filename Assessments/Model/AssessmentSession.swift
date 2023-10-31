//
//  AssessmentSession.swift
//  Assessments
//
//  Created by Evan Ishibashi on 10/30/23.
//

import Foundation
import SwiftUI
import CoreLocation

//struct AssessmentSession: Hashable, Codable, Identifiable {
//    var id: Int
//    var title: String
//    var status: String
//    var api_url: String
//}
//
//struct Result: Codable {
//    var results: [AssessmentSession]
//}

struct AssessmentSession: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var status: String
    var cohort: String
    var description: String
    var dri: String
    var week_group: String
    var start_at: String
    var end_at: String
    var api_url: String
}

