//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by ignasiperez.com on 26/07/2021.
//

import UIKit

extension UIViewController {
  func presentGFAlertMainThread(title: String,message: String,
                                buttonTitle: String) {
    
    DispatchQueue.main.async {
      print("\nextension UIViewController - \(#function)")
      
      let alertVC = GFAlertVC(title: title, message: message,
                              buttonTitle: buttonTitle)
      alertVC.modalPresentationStyle = .overFullScreen
      alertVC.modalTransitionStyle = .crossDissolve
      
      self.present(alertVC, animated: true)
    }
  }
}
