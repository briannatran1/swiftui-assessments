//
//  AssessmentSession.swift
//  Assessments
//
//  Created by Evan Ishibashi on 10/30/23.
//

import Foundation
import SwiftUI
import CoreLocation

// MARK: - Welcome
struct Welcome: Codable {
    let count: Int
    let next, previous: JSONNull?
    let results: [AssessmentSessionShort]
}

// MARK: - Result
struct AssessmentSessionShort: Codable {
    let id: Int
    let title, status: String
    let apiURL: String

    enum CodingKeys: String, CodingKey {
        case id, title, status
        case apiURL = "api_url"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

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

