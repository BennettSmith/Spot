//
//  AppStoreConnectSession.swift
//  Spot
//
//  Created by Bennett Smith on 1/30/20.
//

import Foundation

struct AppStoreConnectSession {
    let bearerToken: String
}

extension AppStoreConnectSession {
    init(p8: String, keyID: String, teamID: String, lifetimeInSeconds: Int = 1200) throws {
        let ascHeader = AppStoreConnectHeader(keyID: keyID)
        let issueDate = Date()
        let iat = Int(issueDate.timeIntervalSince1970.rounded())
        let exp = iat + lifetimeInSeconds
        let ascPayload = AppStoreConnectPayload(teamID: teamID, expireDate: exp)
        bearerToken = try JsonWebToken<AppStoreConnectHeader, AppStoreConnectPayload>(header: ascHeader, payload: ascPayload).sign(with: p8)
    }
}
