//
//  AppDelegate.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = Color.JadeGreen
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        return true
    }
    
}

//extension UIApplication {
//
//    var statusBarUIView: UIView? {
//        let tag = 1000
//        let keyWindow = UIApplication.shared.connectedScenes
//            .map({$0 as? UIWindowScene})
//            .compactMap({$0})
//            .first?.windows.first
//
//        if let statusBar = keyWindow?.viewWithTag(tag) {
//            return statusBar
//        } else {
//            let height = keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? .zero
//            let statusBarView = UIView(frame: height)
//            statusBarView.tag = tag
//            statusBarView.layer.zPosition = 999999
//
//            keyWindow?.addSubview(statusBarView)
//            return statusBarView
//        }
//    }
//}
