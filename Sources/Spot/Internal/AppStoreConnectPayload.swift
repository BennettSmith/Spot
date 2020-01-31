//
//  AppStoreConnectPayload.swift
//  Spot
//
//  Created by Bennett Smith on 1/30/20.
//

import Foundation

internal struct AppStoreConnectPayload: Codable {
    /// iss
    public let teamID: String
    
    /// exp
    public let expireDate: Int
    
    /// aud
    public let audience: String = "appstoreconnect-v1"
    
    enum CodingKeys: String, CodingKey {
        case teamID = "iss"
        case expireDate = "exp"
        case audience = "aud"
    }
}
