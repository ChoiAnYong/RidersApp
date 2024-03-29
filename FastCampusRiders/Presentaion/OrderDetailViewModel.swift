//
//  OrderDetailViewModel.swift
//  FastCampusRiders
//
//  Created by 최안용 on 2/5/24.
//

import Combine
import Foundation
import MBAkit

class OrderDetailViewModel: ViewModelConfigurable {
    typealias VC = OrderDetailViewController

    private(set) var outputSubject = PassthroughSubject<Result<VC.O, Error>, Never>()

    func handleMessage(_ inputMessage: OrderDetailViewController.I) {
        switch inputMessage {
        case .getOrderDetail(let orderID):
            self.requestOrderDetailInfo(with: orderID)
        }
    }
}

extension OrderDetailViewModel {
    private func requestOrderDetailInfo(with orderID: String) {
        Task {
            await APIController.shared
                .request(path: APIController.Path.orderDetail(orderID: orderID), method: .get)
                .decode(decoder: OrderDetailInfo.self)
                .map(VC.O.updateOrderDetail(orderDetailInfo:))
                .send(through: self.outputSubject)
        }
    }
}
