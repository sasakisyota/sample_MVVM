//
//  FirstPageViewController.swift
//  sample_MVVM
//
//  Created by 佐々木翔太 on 2022/08/31.
//

import UIKit

class FirstPageViewController: UIViewController {
    
    lazy var button: UIButton = {
        let view = UIButton.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        view.setTitle("次のページ", for: .normal)
        view.addTarget(self, action: #selector(nextPage(_:)), for: .touchDown)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    @objc func nextPage(_ sender: UIButton) {
        let secondPageViewController = SecondPageViewController.init()
        navigationController?.pushViewController(secondPageViewController, animated: true)
    }
}
