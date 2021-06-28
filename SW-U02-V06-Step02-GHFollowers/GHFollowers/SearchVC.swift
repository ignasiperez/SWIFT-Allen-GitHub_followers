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
    
    configureLogoImageView()
  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    navigationController?.isNavigationBarHidden = true
  }
  
  
  private func configureLogoImageView() {
    view.addSubview(ivLogo)
    
    ivLogo.translatesAutoresizingMaskIntoConstraints = false
    ivLogo.image = UIImage(named: "gh-logo")
    
    NSLayoutConstraint.activate([
      ivLogo.topAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 80),
      ivLogo.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      ivLogo.heightAnchor
        .constraint(equalToConstant: 200),
      ivLogo.widthAnchor
        .constraint(equalToConstant: 200)
    ])
  }

}
