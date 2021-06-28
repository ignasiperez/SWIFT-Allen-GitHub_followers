//
//  SearchVC.swift
//  GHFollowers
//
//  Created by ignasiperez.com on 22/06/2021.
//

import UIKit

class SearchVC: UIViewController {
  
  let ivLogo = UIImageView()
  let txfUserName = GFTextField()
  let btnCallToAction = GFButton(backgroundColor: .systemGreen,
                                 title: "Get Followers")
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .systemBackground
  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    navigationController?.isNavigationBarHidden = true
  }

}
