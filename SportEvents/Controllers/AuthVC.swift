//
//  AuthVC.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 17.12.2023.
//

import Foundation
import UIKit
import SnapKit

class AuthVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
}

private extension AuthVC {
    
    func setupView() {
        view.backgroundColor = D.Colors.mainColor
        
        let label = UILabel()
        label.text = "GOLOVNA"
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
