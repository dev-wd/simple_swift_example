//
//  Coordinator.swift
//  uso
//
//  Created by Mainea on 1/8/20.
//  Copyright © 2020 Mainea. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set}
    func start()
}

