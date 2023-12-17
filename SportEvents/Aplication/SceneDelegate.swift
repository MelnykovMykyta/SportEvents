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
        self.changeVC(vc: AuthVC())
    }
    
    private func setupWindow(with scene: UIScene) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        self.window?.makeKeyAndVisible()
        self.window?.overrideUserInterfaceStyle = .dark
        self.window?.backgroundColor = D.Colors.mainColor
    }
    
    func changeVC(vc: UIViewController) {
            if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                if let window = scene.windows.first {
                    UIView.transition(with: window, duration: 0.6, options: .transitionCrossDissolve, animations: {
                        if let previousController = window.rootViewController {
                            previousController.dismiss(animated: false, completion: nil)
                        }
                        vc.modalPresentationStyle = .fullScreen
                        window.rootViewController = vc
                    }, completion: nil)
                }
            }
        }
}

