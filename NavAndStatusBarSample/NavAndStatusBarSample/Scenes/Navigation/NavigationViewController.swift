//
//  NavigationViewController.swift
//  NavAndStatusBarSample
//
//  Created by nguyen.duc.huyb on 5/31/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class NavigationViewController: UINavigationController {
    override var preferredStatusBarStyle : UIStatusBarStyle {
        if let topVC = viewControllers.last {
            return topVC.preferredStatusBarStyle
        }
        return .default
    }
}
