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
    AssistanceDBModel.shared.createDB()
    }
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    self.viewScrollView.contentSize = size
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
