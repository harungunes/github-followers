//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Harun Gunes on 28/01/2022.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureItems()
  }
  
  private func configureItems() {
    itemOne.set(itemInfoType: .repos, withCount: user.publicRepos)
    itemTwo.set(itemInfoType: .gists, withCount: user.publicGists)
    actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
  }
}
