//
//  MapGoogleDirections.swift
//  FastCampusRiders
//
//  Created by 최안용 on 2/6/24.
//

import CoreLocation
import UIKit

class MapGoogleDirections: DirectionsAvailable {
    static var canOpen: Bool {
        if let mapURL = URL(string: "comgooglemaps://") {
            return UIApplication.shared.canOpenURL(mapURL)
        } else {
            return false
        }
    }

    var appName: String {
        return "Google"
    }

    func openAppToGetDirections(with coordinates: CLLocationCoordinate2D, name: String?) {
        let urlString = "comgooglemapsurl://maps.google.com/?q=@\(coordinates.latitude),\(coordinates.longitude)"
        guard let mapURL = URL(string: urlString) else { return }
        UIApplication.shared.open(mapURL)
    }
}
