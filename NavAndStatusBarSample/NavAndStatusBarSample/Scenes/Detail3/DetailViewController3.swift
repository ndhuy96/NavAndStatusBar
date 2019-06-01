//
//  DetailViewController3.swift
//  NavAndStatusBarSample
//
//  Created by nguyen.duc.huyb on 5/31/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class DetailViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Set background image for navigation bar
        setBackgroundImageNavigationBar()
    }
    
    private func setBackgroundImageNavigationBar() {
        let banner = #imageLiteral(resourceName: "home")
        let imageView = UIImageView(image:banner)
        guard let bannerWidth = navigationController?.navigationBar.frame.size.width,
            let bannerHeight = navigationController?.navigationBar.frame.size.height else { return }
        let bannerX = bannerWidth / 2 - banner.size.width / 2
        let bannerY = bannerHeight / 2 - banner.size.height / 2
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        self.navigationItem.titleView = imageView
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //Reset background image for navigation bar
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
    }
    
    @IBAction func handleShowHideNaviBarButtonTapped(_ sender: Any) {
        navigationController?.isNavigationBarHidden = !navigationController!.isNavigationBarHidden
    }
    
    @IBAction func handlePopButtonTapped(_ sender: Any) {
        //Pop To Root View Controller
        navigationController?.popToRootViewController(animated: true)
    }
}
