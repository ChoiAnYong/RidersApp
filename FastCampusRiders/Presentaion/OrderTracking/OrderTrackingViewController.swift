//
//  OrderTrackingViewController.swift
//  FastCampusRiders
//
//  Created by Moonbeom KWON on 2023/10/01.
//

import Combine
import MapKit
import MBAkit
import UIKit

class OrderTrackingViewController: UIViewController {

    @IBOutlet private weak var mapView: MKMapView!

    @IBOutlet private weak var startPoint: UIView!
    @IBOutlet private weak var midPoint: UIView!
    @IBOutlet private weak var endPoint: UIView!

    @IBOutlet private weak var startLabel: UILabel!
    @IBOutlet private weak var midLabel: UILabel!
    @IBOutlet private weak var endLabel: UILabel!

    @IBOutlet private weak var indicatorStartConstraint: NSLayoutConstraint!
    @IBOutlet private weak var indicatorDelivaryConstraint: NSLayoutConstraint!
    @IBOutlet private weak var indicatorCompletionConstraint: NSLayoutConstraint!

    @IBOutlet private weak var progressStartConstraint: NSLayoutConstraint!
    @IBOutlet private weak var progressDelivaryConstraint: NSLayoutConstraint!
    @IBOutlet private weak var progressCompletionConstraint: NSLayoutConstraint!

    private var defaultColor: UIColor {
        return UIColor(red: 0.824, green: 0.824, blue: 0.824, alpha: 1)
    }

    private var highlightedColor: UIColor {
        return UIColor(red: 0.157, green: 0.761, blue: 0.737, alpha: 1)
    }

    override func viewDidLoad() {
        self.startPoint.layer.cornerRadius = 4.5
        self.midPoint.layer.cornerRadius = 4.5
        self.endPoint.layer.cornerRadius = 4.5
    }
}

extension OrderTrackingViewController {
    private func setStartStatus() {
        self.indicatorStartConstraint.priority = .defaultHigh
        self.indicatorDelivaryConstraint.priority = .defaultLow
        self.indicatorCompletionConstraint.priority = .defaultLow
        
        self.progressStartConstraint.priority = .defaultHigh
        self.progressDelivaryConstraint.priority = .defaultLow
        self.progressCompletionConstraint.priority = .defaultLow
        
        self.startLabel.textColor = self.highlightedColor
        self.midLabel.textColor = self.defaultColor
        self.endLabel.textColor = self.defaultColor
    }
}

