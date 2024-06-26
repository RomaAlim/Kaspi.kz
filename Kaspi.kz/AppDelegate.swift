//
//  AppDelegate.swift
//  Kaspi.kz
//
//  Created by Ramazan Kalabay on 13.06.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?

       func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
           
           // Глобальные настройки UINavigationBar
           let appearance = UINavigationBarAppearance()
           appearance.configureWithOpaqueBackground()
           appearance.backgroundColor = .white
           appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
           appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
           
           UINavigationBar.appearance().standardAppearance = appearance
           UINavigationBar.appearance().scrollEdgeAppearance = appearance
           UINavigationBar.appearance().tintColor = .black
           
           return true
       }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

