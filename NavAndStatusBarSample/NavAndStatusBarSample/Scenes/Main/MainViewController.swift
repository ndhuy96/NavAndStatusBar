//
//  ViewController.swift
//  NavAndStatusBarSample
//
//  Created by nguyen.duc.huyb on 5/30/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        // Add right bar button in navigation bar
        setupRightBarButton()
    }
    
    private func config() {
        navigationItem.title = "MainPage"
        let nav = navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.yellow
        nav?.isTranslucent = false
    }
    
    private func setupRightBarButton() {
        let rightAddBarButtonItem:UIBarButtonItem = UIBarButtonItem(title: "Next", style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleNextButtonTapped))
        let rightSearchBarButtonItem:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.search, target: self, action: #selector(handleSearchButtonTapped))
        navigationItem.setRightBarButtonItems([rightAddBarButtonItem,rightSearchBarButtonItem], animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @objc
    private func handleNextBarButtonTapped() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc
    private func handleSearchButtonTapped() {
        
    }
    
    @IBAction func handleNextButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}

