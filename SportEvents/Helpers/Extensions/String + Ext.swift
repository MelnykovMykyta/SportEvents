//
//  String + Ext.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 21.12.2023.
//

import Foundation

extension String {
    
    func checkEmail() -> Bool {
        let checkEmail = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailChecker = NSPredicate(format: "SELF MATCHES %@", checkEmail)
        return emailChecker.evaluate(with: self)
    }
}
