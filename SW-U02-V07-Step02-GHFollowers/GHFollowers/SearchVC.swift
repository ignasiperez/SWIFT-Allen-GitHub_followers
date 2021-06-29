//
//  SearchVC.swift
//  GHFollowers
//
//  Created by ignasiperez.com on 22/06/2021.
//

import UIKit

class SearchVC: UIViewController {
  
  let logoImageView = UIImageView()
  let usernameTexField = GFTextField()
  let callToActionButton = GFButton(backgroundColor: .systemGreen,
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
    print("\nSearchVC - \(#function)")
    view.addSubview(logoImageView)
    
    logoImageView.translatesAutoresizingMaskIntoConstraints = false
    logoImageView.image = UIImage(named: "gh-logo")
    
    NSLayoutConstraint.activate([
      logoImageView.topAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 80),
      logoImageView.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      logoImageView.heightAnchor
        .constraint(equalToConstant: 200),
      logoImageView.widthAnchor
        .constraint(equalToConstant: 200)
    ])
  }
  
  
  func configureTextField() {
    print("\nSearchVC - \(#function)")
    
    view.addSubview(usernameTexField)
    
    usernameTexField.delegate = self
    

    NSLayoutConstraint.activate([
      usernameTexField.topAnchor
        .constraint(equalTo: logoImageView.bottomAnchor,
                    constant: 48),
      usernameTexField.leadingAnchor
        .constraint(equalTo: view.leadingAnchor,
                    constant: 50),
      usernameTexField.trailingAnchor
        .constraint(equalTo: view.trailingAnchor,
                    constant: -50),
      usernameTexField.heightAnchor
        .constraint(equalToConstant: 50)
    ])
  }

  
  func configureCallToActionButton() {
    print("\nSearchVC - \(#function)")
    
    view.addSubview(callToActionButton)
    
    NSLayoutConstraint.activate([
      callToActionButton.bottomAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                    constant: -50),
      callToActionButton.leadingAnchor
        .constraint(equalTo: view.leadingAnchor,
                    constant: 50),
      callToActionButton.trailingAnchor
        .constraint(equalTo: view.trailingAnchor,
                    constant: -50),
      callToActionButton.heightAnchor
        .constraint(equalToConstant: 50)
    ])
  }
  
  
  func createDismissKeyboardTapGesture() {
    print("\nSearchVC - \(#function)")
    let tap =
      UITapGestureRecognizer(target: self.view,
                             action: #selector(UIView.endEditing))
    
    view.addGestureRecognizer(tap)
  }
  
}



extension SearchVC: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    print("\nextension SearchVC - \(#function)")
    print(" - Did Tap Return")
    
    return true
  }
}
