//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by Azoz Salah on 04/03/2024.
//

import UIKit


protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
