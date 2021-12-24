//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Harun Gunes on 15/12/2021.
//
import UIKit

class FollowerListVC: UIViewController {
  
  var username: String!
  var collectionView: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configure()
    configureCollectionView()
    getFollowers()
    
  }
  
  private func configure() {
    view.backgroundColor = .systemBackground
    navigationController?.navigationBar.prefersLargeTitles = true
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(false, animated: true)
  }
  
  func configureCollectionView() {
    collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewLayout())
    view.addSubview(collectionView)
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.backgroundColor = .systemPink
    collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
  }
  
  func getFollowers() {
    
    NetworkManager.shared.getFollowers(for: username, page: 1) { result in
      
      switch result {
      case .success(let followers):
        print("Followers.count = \(followers.count)")
        print(followers)
        
      case .failure(let error):
        self.presentGFAlertOnMainThread(title: "Bad stuff happened here", message: error.rawValue, buttonTitle: "Ok")
      }
      
    }
  }
}
