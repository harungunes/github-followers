//
//  UserTest.swift
//  GHFollowersTests
//
//  Created by Harun Gunes on 17/06/2022.
//

import XCTest
@testable import GHFollowers

class UserTest: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  
  func testCanParse() throws {
    let json = """
    {
    "login": "hgunes",
    "avatar_url": "https://avatars.githubusercontent.com/u/38434464?v=4",
    "html_url": "https://github.com/hgunes",
    "name": "Harun Güneş",
    "location": "Poland",
    "bio": "Violinist 🎻",
    "public_repos": 20,
    "public_gists": 7,
    "followers": 4,
    "following": 7,
    "created_at": "2018-04-16T15:44:09Z",
    }
    """

    let data = json.data(using: .utf8)!
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    decoder.dateDecodingStrategy = .iso8601
    
    let result = try decoder.decode(User.self, from: data)
    
    XCTAssertNotNil(result)
    XCTAssertEqual(result.login, "hgunes")
    XCTAssertEqual(result.avatarUrl, "https://avatars.githubusercontent.com/u/38434464?v=4")
    XCTAssertEqual(result.htmlUrl, "https://github.com/hgunes")
    XCTAssertEqual(result.name, "Harun Güneş")
    XCTAssertEqual(result.location, "Poland")
    XCTAssertEqual(result.bio, "Violinist 🎻")
    XCTAssertEqual(result.publicRepos, 20)
    XCTAssertEqual(result.publicGists, 7)
    XCTAssertEqual(result.followers, 4)
    XCTAssertEqual(result.following, 7)
    XCTAssertEqual(result.createdAt.convertToMonthYearFormat(), "Apr 2018")
  }
}
