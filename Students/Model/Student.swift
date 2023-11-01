//
//  Student.swift
//  Assessments
//
//  Created by Evan Ishibashi on 11/1/23.
//

import Foundation
import SwiftUI
import CoreLocation


struct StudentsResponse: Codable {
    let count: Int
    let next, previous: String?
    let results: [Student]
}

struct Student: Codable Hashable {
    let student: String
    let user: User
    let status: String
    let apiUrl: String
}

struct User: Codable {
    let username: String
    let firstName: String
    let lastName: String
    let pronoun: String
    let bio: String
    let photo: String
}

