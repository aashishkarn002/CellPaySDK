//
//  ConfirmPaymentResult.swift
//  MyFramework
//
//  Created by Cellcom on 7/28/20.
//

import Foundation
struct ConfirmPaymentResponse: Codable {
    let status, sessionExpired: Bool
    let payload: ConfirmPaymentPayload
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case sessionExpired = "sessionExpired"
        case payload = "payload"
    }
}

// MARK: - Payload
struct ConfirmPaymentPayload: Codable {
    let confirmPaymentResult: ConfirmPaymentResult
    
    enum CodingKeys: String, CodingKey {
        case confirmPaymentResult = "ConfirmPaymentResult"
    }
}

// MARK: - ConfirmPaymentResult
struct ConfirmPaymentResult: Codable {
    let id: Int
    let pending: Bool
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case pending = "pending"
    }
}
