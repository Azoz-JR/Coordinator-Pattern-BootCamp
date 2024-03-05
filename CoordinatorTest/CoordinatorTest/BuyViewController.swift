//
//  BuyViewController.swift
//  CoordinatorTest
//
//  Created by Azoz Salah on 04/03/2024.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    @IBOutlet var productLabel: UILabel!

    weak var coordinator: BuyCoordinator?
    var selectedProduct = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        productLabel.text = (selectedProduct == 0) ? "First" : "Second"
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        
//        coordinator?.didFinishBuying()
//    }

}
