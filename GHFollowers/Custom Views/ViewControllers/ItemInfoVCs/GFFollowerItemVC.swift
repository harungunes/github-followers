//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Harun Gunes on 28/01/2022.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureItems()
  }
  
  private func configureItems() {
    itemOne.set(itemInfoType: .followers, withCount: user.followers)
    itemTwo.set(itemInfoType: .following, withCount: user.following)
    actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
  }
}
