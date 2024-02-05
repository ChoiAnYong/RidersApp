//
//  MapNaverDirections.swift
//  FastCampusRiders
//
//  Created by 최안용 on 2/6/24.
//

import CoreLocation
import UIKit

class MapNaverDirections: DirectionsAvailable {
    static var canOpen: Bool {
        if let mapURL = URL(string: "nmap://") {
            return UIApplication.shared.canOpenURL(mapURL)
        } else {
            return false
        }
    }

    var appName: String {
        return "NAVER"
    }

    func openAppToGetDirections(with coordinates: CLLocationCoordinate2D, name: String?) {
        let appName = name?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let urlString = "nmap://place?lat=\(coordinates.latitude)&lng=\(coordinates.longitude)&name=\(appName)"
        guard let mapURL = URL(string: urlString) else { return }
        UIApplication.shared.open(mapURL)
    }
}

