//
//  DetailViewController2.swift
//  NavAndStatusBarSample
//
//  Created by nguyen.duc.huyb on 5/31/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class DetailViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleNextButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController3") as! DetailViewController3
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func handlePopButtonTapped(_ sender: Any) {
        //Pop To Specific View Controller
        guard let navigationController = navigationController else { return }
        for controller in navigationController.viewControllers as Array {
            if controller.isKind(of: MainViewController.self) {
                navigationController.popToViewController(controller, animated: true)
                break
            }
        }
    }
}
