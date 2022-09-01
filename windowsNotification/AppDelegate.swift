//
//  AppDelegate.swift
//  windowsNotification
//
//  Created by Fernando Luiz Goulart on 01/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        let navigationController = UINavigationController()
        let viewController: UIViewController = ViewController()
        navigationController.viewControllers = [viewController]
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}

final class Reachability {
    static var connectivityView: ConnectivityStatusView = {
        let connectView = ConnectivityStatusView()
        connectView.translatesAutoresizingMaskIntoConstraints = false
        connectView.constraint { view in
            [ view.heightAnchor.constraint(equalToConstant: 29.0)
            ]
        }
        return connectView
    }()

    static func add() {
        guard let myWindow = UIApplication.shared.windows.last else { return }
        myWindow.addSubview(connectivityView)
    }

    static func remove() {
        guard UIApplication.shared.windows.last != nil else { return }
        connectivityView.removeFromSuperview()
    }
}

