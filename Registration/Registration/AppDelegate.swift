//
//  AppDelegate.swift
//  Registration
//
//  Created by MacBookPro on 23.01.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var navigationVC = UINavigationController()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let vc = ViewController()
        self.navigationVC = UINavigationController(rootViewController: vc)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationVC
//        vc.view.backgroundColor = .white
//        vc.title = "Войдите в учётную запись"
//        vc.navigationController?.navigationBar.standardAppearance.titleTextAttributes = [.font:UIFont.systemFont(ofSize: 18, weight: .bold)]
        window?.makeKeyAndVisible()
        return true
    }
}

