//
//  BaseTextFieldView.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 17.12.2023.
//

import Foundation
import UIKit
import SnapKit

class BaseTextFieldView: UIView {
    
    var textField: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

extension BaseTextFieldView: UITextFieldDelegate {
    
    private func setupView() {
        
        backgroundColor = .clear
        layer.borderWidth = 1
        layer.borderColor = D.Colors.tfBorder.cgColor
        
        layer.cornerRadius = 12
        layer.masksToBounds = true
        
        textField = UITextField()
        textField.delegate = self
        textField.backgroundColor = .clear
        addSubview(textField)
        
        snp.makeConstraints { $0.height.equalTo(D.Sizes.authButtonHeight) }
        
        textField.snp.makeConstraints { $0.edges.equalToSuperview().inset(D.Constraints.tfInset) }
    }
}
