//
//  String+Extension.swift
//  GHFollowers
//
//  Created by Harun Gunes on 29/01/2022.
//

import Foundation

extension String {
  
  func convertToDate() -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyy-MM-dd'T'HH:mm:ssZ"
    dateFormatter.locale = Locale(identifier: "en_US_POSIX")
    dateFormatter.timeZone = .current
    
    return dateFormatter.date(from: self)
  }
}
