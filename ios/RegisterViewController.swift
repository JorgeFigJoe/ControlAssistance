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
  override func viewDidLoad() {
        super.viewDidLoad()
    self.hideKeyboardWhenTappedAround()
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowRegister), name: UIResponder.keyboardWillShowNotification, object: nil)
       NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideRegister), name: UIResponder.keyboardWillHideNotification, object: nil)

    }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(true)
    NotificationCenter.default.removeObserver(self)
  }
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    print("giro pantalla")
  }
  
  @objc func keyboardWillShowRegister(notification: NSNotification) {
      if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
          if self.view.frame.origin.y == 0 {
              self.view.frame.origin.y -= keyboardSize.height
          }
      }
  }

  @objc func keyboardWillHideRegister(notification: NSNotification) {
      if self.view.frame.origin.y != 0 {
          self.view.frame.origin.y = 0
      }
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
