//
//  ViewController.swift
//  sample_MVVM
//
//  Created by 佐々木翔太 on 2022/08/30.
//

import UIKit
import RxSwift
import RxCocoa

// MARK: -- View
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        navigationItem.title = "画面1"
        let barButton = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(addButtonTapped))
        navigationItem.rightBarButtonItem = barButton
    }

    @objc func addButtonTapped() {
        print("addButtonTapped")
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }

}

