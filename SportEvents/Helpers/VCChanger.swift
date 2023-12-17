//
//  VCChanger.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 17.12.2023.
//

import Foundation
import UIKit

class VCChanger {
    
    static func changeVC(vc: UIViewController) {
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
