//
//  FollowerTests.swift
//  GHFollowersTests
//
//  Created by Harun Gunes on 19/06/2022.
//

import XCTest
@testable import GHFollowers

class FollowerTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  
  func testFollowerCanParse() throws {
    let json = """
    {
    "login": "hgunes",
    "avatar_url": "https://avatars.githubusercontent.com/u/38434464?v=4",
    }
    """
    
    let data = json.data(using: .utf8)!
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    
    let result = try decoder.decode(Follower.self, from: data)
    
    XCTAssertNotNil(result)
    
    XCTAssertEqual(result.login, "hgunes")
    XCTAssertEqual(result.avatarUrl, "https://avatars.githubusercontent.com/u/38434464?v=4")
  }
}
