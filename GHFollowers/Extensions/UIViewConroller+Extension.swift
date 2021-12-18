//
//  UIViewConroller+Extension.swift
//  GHFollowers
//
//  Created by Harun Gunes on 18/12/2021.
//

import UIKit

extension UIViewController {
  func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
    DispatchQueue.main.async {
      let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
      alertVC.modalPresentationStyle = .overFullScreen
      alertVC.modalTransitionStyle = .crossDissolve
      self.present(alertVC, animated: true)
    }
  }
}
