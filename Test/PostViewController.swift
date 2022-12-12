//
//  PostViewController.swift
//  Test
//
//  Created by Alexander Batyshev on 30.11.2022.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGreen
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(goToInfo))
    }

    @objc func goToInfo() {
        let infoViewController = InfoViewController()
        self.navigationController?.pushViewController(infoViewController, animated: true)
    }
}
