//
//  AppStoreConnectHeader.swift
//  Spot
//
//  Created by Bennett Smith on 1/30/20.
//

import Foundation

internal struct AppStoreConnectHeader: Codable {
    /// alg
    let algorithm: String = "ES256"
    
    /// kid
    let keyID: String
    
    /// typ
    let type: String = "JWT"
    
    enum CodingKeys: String, CodingKey {
        case algorithm = "alg"
        case keyID = "kid"
        case type = "typ"
    }
}

