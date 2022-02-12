//
//  GFAlertContainerView.swift
//  GHFollowers
//
//  Created by Harun Gunes on 12/02/2022.
//

import UIKit

class GFAlertContainerView: UIView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    configure()
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  func configure() {
    backgroundColor = .systemBackground
    translatesAutoresizingMaskIntoConstraints = false
    layer.cornerRadius = 16
    layer.borderWidth = 2
    layer.borderColor = UIColor.white.cgColor
  }
}
