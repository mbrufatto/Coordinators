//
//  Coordinator.swift
//  Coordinator_Tutorial
//
//  Created by Marcio Habigzang Brufatto on 23/05/21.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
