//
//  D.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 17.12.2023.
//

import Foundation
import UIKit

struct D {
    
    struct Colors {
        static let mainColor = UIColor(red: 0.039, green: 0.145, blue: 0.251, alpha: 1)
        static let whiteTextColor = UIColor(red: 0.941, green: 1, blue: 1, alpha: 1)
        static let greyTextColor = UIColor(red: 0.435, green: 0.596, blue: 0.722, alpha: 1)
        static let signInButtonColor =  UIColor(red: 0, green: 0.431, blue: 1, alpha: 1)
    }
    
    struct Texts {
        static let mainVCLabel = "Останні спортивні новини та івенти"
        static let mainVCDesc = "Отримайте широкий спектр інформації про спортивні події, розклад матчів, можливість придбання квитків та зручну систему сповіщень щодо останніх новин і результатів улюблених команд."
        static let signInButtonLabel = "Вхід"
        static let signUpButtonLabel = "Реєстрація"
    }
    
    struct Sizes {
        static let halfSize = 0.5
        static let authButtonHeight = 48
    }
    
    struct Constraints {
        static let twentyPoints = 20
        static let fourtyPoints = 40
    }
}
