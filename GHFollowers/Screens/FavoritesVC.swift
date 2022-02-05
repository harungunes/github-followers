//
//  FavoritesVC.swift
//  GHFollowers
//
//  Created by Harun Gunes on 14/12/2021.
//
import UIKit

class FavoritesVC: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemGreen
    
    PersistenceManager.retrieveFavorites { result in
      switch result {
      case .success(let favorites):
        print(favorites!)
      case .failure(let error):
        break
      }
    }
  }
}
