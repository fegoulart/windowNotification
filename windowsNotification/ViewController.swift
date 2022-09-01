//
//  ViewController.swift
//  windowsNotification
//
//  Created by Fernando Luiz Goulart on 01/09/22.
//

import UIKit

class ViewController: UIViewController {

    var status = false
    
    lazy var msgButton: UIButton = {
        var myButton = UIButton()
        myButton.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.backgroundColor = .white
        return myButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        view.addSubview(msgButton)
        msgButton.constraint { view in
            [
                view.heightAnchor.constraint(equalToConstant: 60),
                view.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
                view.trailingAnchor.constraint(equalTo: self.view.safeArea().trailingAnchor),
                view.leadingAnchor.constraint(equalTo: self.view.safeArea().leadingAnchor),
                view.bottomAnchor.constraint(equalTo: self.view.safeArea().bottomAnchor, constant: -20)
            ]
        }
    }

    @objc func pressed() {
        if status {
            Reachability.remove()
            status = false
        } else {
            Reachability.add()
            status = true
        }
    }
}
