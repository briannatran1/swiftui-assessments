//
//  tokenResponse.swift
//  Assessments
//
//  Created by Evan Ishibashi on 10/31/23.
//

import Foundation

struct TokenResponse: Codable {
    let id: Int
    let referralCode, referanceReferralCode, firstName, lastName: String
    let paymentMode, email, gender, birthDate: String
    let mobile, countryCode, picture, deviceToken: String
    let deviceId, deviceType, loginBy: String // <--
    let socialUniqueId, latitude, longitude, stripeCustId: String?  // <--
    let walletBalance: Int
    let rating: String
    let otp: Int
    let updatedAt, emergencyContact1, emergencyContact2: String
    let deletedAt: String?
    let currency, sos, rentalContent, outstationContent: String
}
