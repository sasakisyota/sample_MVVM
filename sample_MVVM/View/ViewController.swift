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
    
    let titleLabel: UILabel = {
        let view = UILabel.init()
        view.text = "Hello World!"
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var button: UIButton = {
        let view = UIButton.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        view.setTitle("下から出てくるやつ", for: .normal)
        view.addTarget(self, action: #selector(openModal(_:)), for: .touchDown)
        return view
    }()
    
    lazy var navButton: UIButton = {
        let view = UIButton.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        view.setTitle("ナビゲーション", for: .normal)
        view.addTarget(self, action: #selector(openNavigation(_:)), for: .touchDown)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(button)
        view.addSubview(navButton)
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            navButton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 10),
            navButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    @objc func openModal(_ sender: UIButton) {
        let modalViewController = ModalViewController.init()
        modalViewController.modalPresentationStyle = .fullScreen
        present(modalViewController, animated: true, completion: nil)
    }
    
    @objc func openNavigation(_ sender: UIButton) {
        let firstPageViewController = FirstPageViewController.init()
        let customNavigationViewController = UINavigationController.init(rootViewController: firstPageViewController)
        present(customNavigationViewController, animated: true, completion: nil)
    }
}

