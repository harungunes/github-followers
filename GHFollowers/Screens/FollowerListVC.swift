//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Harun Gunes on 15/12/2021.
//
import UIKit

class FollowerListVC: UIViewController {
  
  var username: String!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
    navigationController?.isNavigationBarHidden = false
    navigationController?.navigationBar.prefersLargeTitles = true
  }
}
