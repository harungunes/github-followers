//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Harun Gunes on 21/12/2021.
//

import Foundation

class NetworkManager {
  
  static let shared = NetworkManager()
  let baseUrl = "https://api.github.com/users/"
  
  private init() {}
  
  func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
    let endpoint = baseUrl + "\(username)/followers"
  }
}
