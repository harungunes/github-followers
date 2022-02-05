//
//  FavoriteCell.swift
//  GHFollowers
//
//  Created by Harun Gunes on 05/02/2022.
//

import UIKit

class FavoriteCell: UITableViewCell {
  
  static let reuseID = "FavoriteCell"
  let avatarImageView = GFAvatarImageView(frame: .zero)
  let usernameLabel = GFTitleLabel(textAlignment: .left, fontSize: 26)
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
