//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Pushkar Deshmukh on 06/07/22.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
