//
//  RegisterViewController.swift
//  ControlAssistance
//
//  Created by Jorge  Figueroa on 08/02/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

  @IBOutlet weak var numUsuarioTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var companyTextField: UITextField!
  @IBOutlet weak var registerScrollView: UIScrollView!
  override func viewDidLoad() {
        super.viewDidLoad()
    self.hideKeyboardWhenTappedAround()
    NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardAppearRegister(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardDisappearRegister(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(true)
    NotificationCenter.default.removeObserver(self)
  }
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    print("giro pantalla")
  }
  
  @objc func onKeyboardAppearRegister(_ notification: NSNotification) {
      guard let info = notification.userInfo, let kbSize = (info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.size else { return }
      let insets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.height, right: 0)
      registerScrollView.contentInset = insets
      registerScrollView.scrollIndicatorInsets = insets
  }
   
   @objc func onKeyboardDisappearRegister(_ notification: NSNotification) {
       registerScrollView.contentInset = .zero
       registerScrollView.scrollIndicatorInsets = .zero
   }
  
  @IBAction func createAccountButton(_ sender: Any) {
    guard let name = numUsuarioTextField.text else {return}
    guard let password = passwordTextField.text else {return}
    guard let company = companyTextField.text else {return}
    AssistanceDBModel.shared.insertDatesToDBModel(getName: name, getCompany: company, getPass: password)
    self.dismiss(animated: true, completion: nil)
  }
  @IBAction func exitButtonAction(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
}
