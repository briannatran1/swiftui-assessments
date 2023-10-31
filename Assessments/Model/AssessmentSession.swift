//
//  AssessmentSession.swift
//  Assessments
//
//  Created by Evan Ishibashi on 10/30/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct AssessmentSession: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var status: String
    var api_url: String
}

