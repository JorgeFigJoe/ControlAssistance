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
