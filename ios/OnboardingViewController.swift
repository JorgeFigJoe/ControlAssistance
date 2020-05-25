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
    }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(true)
    NotificationCenter.default.removeObserver(self)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardAppear(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
       NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardDisappear(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
  }
  
 @objc func onKeyboardAppear(_ notification: NSNotification) {
     guard let info = notification.userInfo, let kbSize = (info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.size else { return }
     let insets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.height, right: 0)
     viewScrollView.contentInset = insets
     viewScrollView.scrollIndicatorInsets = insets
 }
  
  @objc func onKeyboardDisappear(_ notification: NSNotification) {
      viewScrollView.contentInset = .zero
      viewScrollView.scrollIndicatorInsets = .zero
  }
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    print("giro pantalla")
  }
  


  @IBAction func registerViewAction(_ sender: Any) {
    let vc = RegisterViewController()
    vc.modalPresentationStyle = .fullScreen
    self.present(vc, animated: true)
  }
  @IBAction func openMapViewButton(_ sender: Any) {
    let vc = ControlMapViewController()
    vc.modalPresentationStyle = .fullScreen
    self.present(vc, animated: true)
  }
}
