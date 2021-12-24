//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Harun Gunes on 24/12/2021.
//

import UIKit

class FollowerCell: UICollectionView {
  static let reuseID = "FollowerCell"
  
  let avatarImageView = UIImageView()
  let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
}
