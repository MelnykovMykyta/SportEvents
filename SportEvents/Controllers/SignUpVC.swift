//
//  SignUpVC.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 21.12.2023.
//

import Foundation
import UIKit
import SnapKit

class SignUpVC: UIViewController {
    
    private var nameView: BaseTextFieldView!
    private var emailView: BaseTextFieldView!
    private var passwordView: BaseTextFieldView!
    private var signUpButton: UIButton!
    private var signInButton: UIButton!
    private var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        self.addKeyboardDismissGesture()
        
        signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
        signInButton.addTarget(self, action: #selector(signIn), for: .touchUpInside)
        forgotPasswordButton.addTarget(self, action: #selector(forgotPassword), for: .touchUpInside)
    }
    
    @objc private func signUp() {
        guard let name = nameView.textField.text,
              let email = emailView.textField.text,
              let password = passwordView.textField.text else {
            return
        }
        print(name)
        print(email)
        print(password)
    }
    
    @objc private func signIn() {
        VCChanger.changeVC(vc: SignUpVC())
    }
    
    @objc private func forgotPassword() {
//        VCChanger.changeVC(vc: SignUpVC())
    }
}

private extension SignUpVC {
    
    func setupView() {
        
        view.backgroundColor = D.Colors.mainColor
        
        let signImage = UIImageView()
        signImage.image = UIImage(named: "SignVCAthletes")
        signImage.contentMode = .scaleAspectFit
        view.addSubview(signImage)
        
        let formView = UIView()
        formView.backgroundColor = D.Colors.mainColor
        formView.layer.cornerRadius = 24
        formView.layer.masksToBounds = true
        formView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.addSubview(formView)
        
        let label = UILabel()
        label.text = D.Texts.signUpVCLabel
        label.font = UIFont(name: "Helvetica", size: 40)
        view.addSubview(label)
        
        let textFieldsSV = UIStackView()
        textFieldsSV.axis = .vertical
        textFieldsSV.spacing = CGFloat(D.Constraints.twentyPoints)
        textFieldsSV.distribution = .fillEqually
        view.addSubview(textFieldsSV)
        
        nameView = BaseTextFieldView()
        nameView.textField.placeholder = D.Texts.namePlaceholder
        textFieldsSV.addArrangedSubview(nameView)
        
        emailView = BaseTextFieldView()
        emailView.textField.placeholder = D.Texts.emailPlaceholder
        textFieldsSV.addArrangedSubview(emailView)
        
        emailView = BaseTextFieldView()
        emailView.textField.placeholder = D.Texts.emailPlaceholder
        textFieldsSV.addArrangedSubview(emailView)
        
        passwordView = BaseTextFieldView()
        passwordView.textField.placeholder = D.Texts.passwordPlaceholder
        textFieldsSV.addArrangedSubview(passwordView)
        
        signUpButton = UIButton(type: .system)
        signUpButton.setTitle(D.Texts.signInButtonLabel, for: .normal)
        signUpButton.backgroundColor = D.Colors.signInButtonColor
        signUpButton.tintColor = D.Colors.whiteTextColor
        signUpButton.layer.cornerRadius = 12
        signUpButton.layer.masksToBounds = true
        textFieldsSV.addArrangedSubview(signUpButton)
        
        signInButton = UIButton(type: .system)
        signInButton.setTitle(D.Texts.signInUserLabel, for: .normal)
        signInButton.backgroundColor = .clear
        signInButton.tintColor = D.Colors.greyTextColor
        textFieldsSV.addArrangedSubview(signInButton)
        
        forgotPasswordButton = UIButton(type: .system)
        forgotPasswordButton.setTitle(D.Texts.forgotPasswordLabel, for: .normal)
        forgotPasswordButton.backgroundColor = .clear
        forgotPasswordButton.tintColor = D.Colors.greyTextColor
        view.addSubview(forgotPasswordButton)
        
        signImage.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
        }
        
        formView.snp.makeConstraints {
            $0.top.equalTo(signImage.snp.bottom).inset(D.Constraints.fourtyPoints)
            $0.leading.trailing.bottom.equalToSuperview()
        }
        
        label.snp.makeConstraints {
            $0.top.equalTo(formView.snp.top).inset(D.Constraints.twentyPoints)
            $0.leading.equalToSuperview().inset(D.Constraints.twentyPoints)
        }
        
        textFieldsSV.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).inset(-D.Constraints.fourtyPoints)
            $0.leading.trailing.equalToSuperview().inset(D.Constraints.twentyPoints)
        }
        
        signUpButton.snp.makeConstraints { $0.height.equalTo(D.Sizes.authButtonHeight) }
        
        signInButton.snp.makeConstraints { $0.height.equalTo(D.Sizes.authButtonHeight) }
        
        forgotPasswordButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }
}
