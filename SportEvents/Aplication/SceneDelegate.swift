//
//  SceneDelegate.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 17.12.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        self.setupWindow(with: scene)
        VCChanger.changeVC(vc: SignInVC())
    }
    
    private func setupWindow(with scene: UIScene) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        self.window?.makeKeyAndVisible()
        self.window?.overrideUserInterfaceStyle = .dark
        self.window?.backgroundColor = D.Colors.mainColor
    }
}
