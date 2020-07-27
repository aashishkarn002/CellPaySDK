//
//  PayMerchantResponse.swift
//  MyFramework
//
//  Created by Cellcom on 7/27/20.
//

import Foundation
struct PaymentMerchantResponse: Codable {
    let status, sessionExpired: Bool
    let payload: MerchantPayload
}

// MARK: - Payload
struct MerchantPayload: Codable {
    let doPaymentResult: DoPaymentResult

    enum CodingKeys: String, CodingKey {
        case doPaymentResult = "DoPaymentResult"
    }
}

// MARK: - DoPaymentResult
struct DoPaymentResult: Codable {
    let wouldRequireAuthorization: Bool
    let from, to: DoPaymentResultFrom
    let finalAmount: Int
    let formattedFinalAmount: String
    let fees: [Fee]
    let transferType: TransferType
    let customValues: [DoPaymentCustomValue]
    let isOtpEnable: Bool
    let consolidatedAmount: Int
    let consolidatedFormatterAmount: String
    let showConsolidateAmount: Bool
}

// MARK: - CustomValue
struct DoPaymentCustomValue: Codable {
    let internalName: String
    let fieldID: Int
    let value: String

    enum CodingKeys: String, CodingKey {
        case internalName
        case fieldID = "fieldId"
        case value
    }
}

// MARK: - Fee
struct Fee: Codable {
    let name: String
    let amount: Int
    let formattedAmount: String
}

// MARK: - DoPaymentResultFrom
struct DoPaymentResultFrom: Codable {
    let id: Int
    let name, username, mobileNo: String
}

// MARK: - TransferType
struct TransferType: Codable {
    let id: Int
    let name: String
    let from, to: TransferTypeFrom
}

// MARK: - TransferTypeFrom
struct TransferTypeFrom: Codable {
    let id: Int
    let name: String
    let currency: Currency
}

// MARK: - Currency
struct Currency: Codable {
    let id: Int
    let symbol, name: String
}
