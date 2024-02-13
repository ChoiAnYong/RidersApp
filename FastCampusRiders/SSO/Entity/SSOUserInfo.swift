//
//  SSOUserInfo.swift
//  FastCampusRiders
//
//  Created by 최안용 on 2/13/24.
//

import Foundation

struct SSOUserInfo: Decodable {
    let userID: String
    let riderName: String
    
    enum CodingKeys: String, CodingKey {
        case userID = "id"
        case riderName = "rider_name"
    }
}
