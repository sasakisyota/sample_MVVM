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
class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
        ])
    }
    
    let titleLabel: UILabel = {
        let view = UILabel.init()
        view.text = "Hello World!"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    @objc func addButtonTapped() {
        print("addButtonTapped")
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }

}

