//
//  Policies.swift
//  PoliciesTestApp
//
//  Created by MTPC-523 on 17/07/25.
//

import Foundation

struct Policies: Codable, Identifiable {
    let policyName : String?
    let policyNumber : Int?
    let policyStatus : String?
    let nextPremiumDue : String?
    let startDate : String?
    let maturityDate : String?
    let sumAssured : Int?
    let premiumFrequency : String?
    let lastPremiumPaid : String?
    let nextPremiumAmount : Int?
    var id: Int
    
    enum CodingKeys: String, CodingKey {
            case policyName = "Policy Name"
            case policyNumber = "Policy Number"
            case policyStatus = "Policy Status"
            case nextPremiumDue = "Next Premium Due"
            case startDate = "Start Date"
            case maturityDate = "Maturity Date"
            case sumAssured = "Sum Assured"
            case premiumFrequency = "Premium Frequency"
            case lastPremiumPaid = "Last Premium Paid"
            case nextPremiumAmount = "Next Premium Amount"
            case id = "id"
        }
}

struct PoliciesResponse: Decodable {
    let request: [Policies]
}

struct MockData {
    
    static let samplePolicies = Policies(policyName: "Mrs", policyNumber: 216418, policyStatus: "Lapsed", nextPremiumDue: "9/14/2025", startDate: "2/12/2023", maturityDate: "9/18/2054", sumAssured: 8646102, premiumFrequency: "Quarterly", lastPremiumPaid: "Paid", nextPremiumAmount: 17592, id: 0)
    
    static let policyList = [samplePolicies, samplePolicies, samplePolicies, samplePolicies]
}
