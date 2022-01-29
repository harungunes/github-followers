//
//  Date+Extension.swift
//  GHFollowers
//
//  Created by Harun Gunes on 29/01/2022.
//

import Foundation

extension Date {
  
  func convertToMonthYearFormat() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM yyyy"
    
    return dateFormatter.string(from: self)
  }
}
