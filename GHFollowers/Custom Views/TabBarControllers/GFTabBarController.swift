//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Harun Gunes on 05/02/2022.
//

import UIKit

class GFTabBarController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    UITabBar.appearance().tintColor = .systemGreen
    viewControllers = [createNavigationController(to: SearchVC(), title: "Search", tabbarSystemItem: .search, tag: 0), createNavigationController(to: FavoritesVC(), title: "Favorites", tabbarSystemItem: .favorites, tag: 1)]
  }
  
  func createNavigationController(to rootVC: UIViewController, title: String, tabbarSystemItem: UITabBarItem.SystemItem, tag: Int) -> UINavigationController {
    let destinationVC = rootVC
    destinationVC.title = title
    destinationVC.tabBarItem = UITabBarItem(tabBarSystemItem: tabbarSystemItem, tag: tag)
    
    return UINavigationController(rootViewController: destinationVC)
  }
  
}
