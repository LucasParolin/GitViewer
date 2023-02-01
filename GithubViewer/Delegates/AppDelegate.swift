//
//  AppDelegate.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigationView =  UINavigationController(rootViewController: InicialScreenViewController())
        navigationView.navigationBar.tintColor = .black
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = navigationView
        window?.backgroundColor = .white
        window?.tintColor = .systemBlue
        return true
    }
}
