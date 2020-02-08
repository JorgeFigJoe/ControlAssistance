//
//  OnboardingViewController.swift
//  ControlAssistance
//
//  Created by Jorge  Figueroa on 08/02/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
  override func viewDidLoad() {
        super.viewDidLoad()
    }

  @IBAction func registerViewAction(_ sender: Any) {
    let vc = RegisterViewController()
    self.present(vc, animated: true)
  }
}
