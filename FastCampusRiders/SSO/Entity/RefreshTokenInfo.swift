//
//  RefreshTokenInfo.swift
//  FastCampusRiders
//
//  Created by 최안용 on 2/13/24.
//

import Foundation

struct RefreshTokenInfo: Decodable {
    let accessToken: String
    let expirationTime: TimeInterval
    
    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case expirationTime = "access_token_expiration"
    }
}
