//
//  DetailViewController.swift
//  NavAndStatusBarSample
//
//  Created by nguyen.duc.huyb on 5/31/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Transparent navigation bar
        configNavigationBar(image: UIImage(), isTranslucent: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Default navigation bar
        configNavigationBar(image: nil, isTranslucent: false)
    }
    
    private func configNavigationBar(image: UIImage?, isTranslucent: Bool) {
        navigationController?.navigationBar.setBackgroundImage(image, for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = image
        navigationController?.navigationBar.isTranslucent = isTranslucent
    }
    
    @IBAction func handleNextButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController2") as! DetailViewController2
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func handlePopButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
