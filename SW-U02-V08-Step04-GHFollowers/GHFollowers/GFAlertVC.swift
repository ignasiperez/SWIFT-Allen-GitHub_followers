//
//  GFAlertVC.swift
//  GHFollowers
//
//  Created by ignasiperez.com on 04/07/2021.
//

import UIKit

class GFAlertVC: UIViewController {
  
  let containerView = UIView()
  let titleLabel = GFTitleLabel(textAlignment: .center,
                                fontSize: 20)
  let messageLabel = GFBodyLabel(textAlignment: .center)
  let actionButton = GFButton(backgroundColor: .systemPink,
                              title: "Ok")
  
  var alertTitle: String?
  var message: String?
  var buttonTitle: String?
  
  init(title: String, message: String, buttonTitle: String) {
    super.init(nibName: nil, bundle: nil)
    
    self.alertTitle = title
    self.message = message
    self.buttonTitle = buttonTitle
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = UIColor(red: 0, green: 0, blue: 0,
                                   alpha: 0.75)
    
    configureContainerView()
  }
  
  
  func configureContainerView() {
    view.addSubview(containerView)
    
    containerView.translatesAutoresizingMaskIntoConstraints = false
    
    containerView.backgroundColor = .systemBackground
    containerView.layer.cornerRadius = 16
    containerView.layer.borderWidth = 2
    containerView.layer.borderColor = UIColor.white.cgColor
    
    
    NSLayoutConstraint.activate([
      containerView.centerYAnchor
        .constraint(equalTo: view.centerYAnchor),
      containerView.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      containerView.widthAnchor
        .constraint(equalToConstant: 280),
      containerView.heightAnchor
        .constraint(equalToConstant: 220)
    ])
  }
  
}
