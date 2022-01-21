//
//  UserInfoVC.swift
//  GHFollowers
//
//  Created by Harun Gunes on 17/01/2022.
//

import UIKit

class UserInfoVC: UIViewController {
  
  let headerView = UIView()
  let itemViewOne = UIView()
  let itemViewTwo = UIView()
  
  var itemViews: [UIView] = []
  
  var username: String!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureVC()
    layoutUI()
    getUserInfo()
    
  }
  
  func configureVC() {
    view.backgroundColor = .systemBackground
    let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
    navigationItem.rightBarButtonItem = doneButton
  }
  
  func getUserInfo() {
    NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
      guard let self = self else { return }
      
      switch result {
      case .failure(let error):
        self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
      case .success(let user):
        DispatchQueue.main.async {
          self.add(childVC: GFUserInfoHeaderVC(user: user), to: self.headerView)
        }
      }
    }
  }
  
  func layoutUI() {
    let padding: CGFloat = 20
    let itemHeight: CGFloat = 140
    
    itemViews = [headerView, itemViewOne, itemViewTwo]
    
    for item in itemViews {
      view.addSubview(item)
      item.translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
        item.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
        item.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
      ])
      
    }
    
    itemViewOne.backgroundColor = .systemBlue
    itemViewTwo.backgroundColor = .systemPurple
    
    NSLayoutConstraint.activate([
      headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      headerView.heightAnchor.constraint(equalToConstant: 180),
      
      itemViewOne.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: padding),
      itemViewOne.heightAnchor.constraint(equalToConstant: itemHeight),
      
      itemViewTwo.topAnchor.constraint(equalTo: itemViewOne.bottomAnchor, constant: padding),
      itemViewTwo.heightAnchor.constraint(equalToConstant: itemHeight),
    ])
  }
  
  func add(childVC: UIViewController, to containerView: UIView) {
    addChild(childVC)
    containerView.addSubview(childVC.view)
    childVC.view.frame = view.bounds
    childVC.didMove(toParent: self)
  }
  
  @objc
  func dismissVC() {
    dismiss(animated: true)
  }
  
}