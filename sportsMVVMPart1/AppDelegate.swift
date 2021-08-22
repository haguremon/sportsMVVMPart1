//
//  AppDelegate.swift
//  sportsMVVMPart1
//
//  Created by IwasakIYuta on 2021/08/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithDefaultBackground()
            appearance.backgroundColor = .systemGray
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.label]
            appearance.titleTextAttributes = [.foregroundColor: UIColor.label]
            // Large Title 用 NavigationBar の色設定
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            // 通常の NavigationBar の色設定
            UINavigationBar.appearance().standardAppearance = appearance
        } else {
            // iOS 13 未満はこれまで通り
            UINavigationBar.appearance().barTintColor = .systemGray
        }
        
        
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

