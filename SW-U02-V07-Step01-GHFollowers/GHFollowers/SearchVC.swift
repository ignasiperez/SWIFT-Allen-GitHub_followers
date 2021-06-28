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
    configureTextField()
    configureCallToActionButton()
    createDismissKeyboardTapGesture()
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
  
  
  func configureTextField() {
    print("SearchVC - \(#function)")
    
    view.addSubview(txfUserName)
    
    print(" - After view.addSubview(txfUserName)")

    NSLayoutConstraint.activate([
      txfUserName.topAnchor
        .constraint(equalTo: ivLogo.bottomAnchor,
                    constant: 48),
      txfUserName.leadingAnchor
        .constraint(equalTo: view.leadingAnchor,
                    constant: 50),
      txfUserName.trailingAnchor
        .constraint(equalTo: view.trailingAnchor,
                    constant: -50),
      txfUserName.heightAnchor
        .constraint(equalToConstant: 50)
    ])
    
    print(" - After NSLayoutConstraint.activate([)")
  }

  
  func configureCallToActionButton() {
    print("\nSearchVC - \(#function)")
    
    view.addSubview(btnCallToAction)
    
    print(" - After view.addSubview(btnCallToAction)")
    
    NSLayoutConstraint.activate([
      btnCallToAction.bottomAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                    constant: -50),
      btnCallToAction.leadingAnchor
        .constraint(equalTo: view.leadingAnchor,
                    constant: 50),
      btnCallToAction.trailingAnchor
        .constraint(equalTo: view.trailingAnchor,
                    constant: -50),
      btnCallToAction.heightAnchor
        .constraint(equalToConstant: 50)
    ])
    
    print(" - After NSLayoutConstraint.activate([)")
  }
  
  
  func createDismissKeyboardTapGesture() {
    let tap =
      UITapGestureRecognizer(target: self.view,
                             action: #selector(UIView.endEditing))
    
    view.addGestureRecognizer(tap)
  }
  
}
