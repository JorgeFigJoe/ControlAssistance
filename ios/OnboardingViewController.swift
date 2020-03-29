//
//  OnboardingViewController.swift
//  ControlAssistance
//
//  Created by Jorge  Figueroa on 08/02/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
  @IBOutlet weak var viewScrollView: UIScrollView!
  override func viewDidLoad() {
        super.viewDidLoad()
    self.hideKeyboardWhenTappedAround()
    AssistanceDBModel.shared.createDB()
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
  
  override func viewWillDisappear(_ animated: Bool) {
    NotificationCenter.default.removeObserver(self)
  }
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    self.viewScrollView.contentSize = size
  }
  
  @objc func keyboardWillShow(notification: NSNotification) {
      if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
          if self.view.frame.origin.y == 0 {
              self.view.frame.origin.y -= keyboardSize.height
          }
      }
  }

  @objc func keyboardWillHide(notification: NSNotification) {
      if self.view.frame.origin.y != 0 {
          self.view.frame.origin.y = 0
      }
  }

  @IBAction func registerViewAction(_ sender: Any) {
    let vc = RegisterViewController()
    self.present(vc, animated: true)
  }
  @IBAction func openMapViewButton(_ sender: Any) {
    let vc = ControlMapViewController()
    vc.modalPresentationStyle = .fullScreen
    self.present(vc, animated: true)
  }
}
