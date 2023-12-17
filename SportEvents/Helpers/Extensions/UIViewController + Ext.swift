//
//  UIViewController + Ext.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 17.12.2023.
//

import Foundation
import UIKit

extension UIViewController {
    
    func addKeyboardDismissGesture() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboardTouchOutside))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboardTouchOutside() {
        view.endEditing(true)
    }
    
    @objc public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
