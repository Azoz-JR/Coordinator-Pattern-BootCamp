//
//  BuyCoordinator.swift
//  CoordinatorTest
//
//  Created by Azoz Salah on 05/03/2024.
//

import UIKit


class BuyCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    weak var parentCoordinator: MainCoordinator?
    var selectedProduct: Int
    
    init(navigationController: UINavigationController, selectedProduct: Int) {
        self.navigationController = navigationController
        self.selectedProduct = selectedProduct
    }
    
    func start() {
        let buyVC = BuyViewController.instantiate()
        buyVC.coordinator = self
        buyVC.selectedProduct = selectedProduct
        
        navigationController.pushViewController(buyVC, animated: true)
    }
    
//    func didFinishBuying() {
//        parentCoordinator?.childDidFinish(self)
//    }
    
}
