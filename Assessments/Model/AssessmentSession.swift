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
//    var cohort: String
//    var description: String
//    var dri: String
//    var week_group: String
//    var start_at: String
//    var end_at: String
//    var api_url: String
//}

struct AssessmentsResponse: Codable {
    let count: Int
    let next, previous: String?
    let results: [Assessment]
}

struct Assessment: Codable, Identifiable {
    let id: Int
    let title: String
    let status: String
    let apiUrl: String
}

struct AssessmentDetail: Codable, Identifiable, Hashable {
    var id: Int
    var assessment: String
    var cohort: String
    var title: String
    var description: String
    var dri: String
    var weekGroup: String
    var startAt: String
    var endAt: String
    var assetSet: [String?]
//    var require_github_url: Bool
//    var require_deployment_url: Bool
//    var require_zipfile: Bool
//    var is_pass_fail: Bool
}
