//
//  SearchVC.swift
//  GHFollowers
//
//  Created by Harun Gunes on 14/12/2021.
//

import UIKit

class SearchVC: UIViewController {
  
  // MARK: - Properties
  
  let logoImageView = UIImageView()
  let usernameTextField = GFTextField()
  let searchButton = GFButton(backgroungColor: .systemGreen, title: "Get Followers")
  
  // MARK: - Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.isNavigationBarHidden = true
  }

}
