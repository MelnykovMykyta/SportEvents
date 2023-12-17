//
//  SignInVC.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 17.12.2023.
//

import Foundation
import UIKit
import SnapKit

final class SignInVC: UIViewController {
    
    private var emailView: BaseTextFieldView!
    private var passwordView: BaseTextFieldView!
    private var signInButton: UIButton!
    private var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        self.addKeyboardDismissGesture()
        
        signInButton.addTarget(self, action: #selector(signIn), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
    }
    
    @objc private func signIn() {
        guard let email = emailView.textField.text,
              let password = passwordView.textField.text else {
            return
        }
        print(email)
        print(password)
    }
    
    @objc private func signUp() {
//        VCChanger.changeVC(vc: SignUpVC())
    }
}

private extension SignInVC {
    
    func setupView(){
        
        view.backgroundColor = D.Colors.mainColor
        
        let signImage = UIImageView()
        signImage.image = UIImage(named: "SignVCAthletes")
        signImage.contentMode = .scaleAspectFit
        view.addSubview(signImage)
        
        let formView = UIView()
        formView.backgroundColor = D.Colors.mainColor
        formView.layer.cornerRadius = 12
        formView.layer.masksToBounds = true
        formView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.addSubview(formView)
        
        let label = UILabel()
        label.text = D.Texts.signInVCLabel
        label.font = UIFont(name: "Helvetica", size: 40)
        view.addSubview(label)
        
        let textFieldsSV = UIStackView()
        textFieldsSV.axis = .vertical
        textFieldsSV.spacing = CGFloat(D.Constraints.twentyPoints)
        textFieldsSV.distribution = .fillEqually
        view.addSubview(textFieldsSV)
        
        emailView = BaseTextFieldView()
        emailView.textField.placeholder = D.Texts.emailPlaceholder
        textFieldsSV.addArrangedSubview(emailView)
        
        passwordView = BaseTextFieldView()
        passwordView.textField.placeholder = D.Texts.passwordPlaceholder
        textFieldsSV.addArrangedSubview(passwordView)
        
        signInButton = UIButton(type: .system)
        signInButton.setTitle(D.Texts.signInButtonLabel, for: .normal)
        signInButton.backgroundColor = D.Colors.signInButtonColor
        signInButton.tintColor = D.Colors.whiteTextColor
        signInButton.layer.cornerRadius = 12
        signInButton.layer.masksToBounds = true
        textFieldsSV.addArrangedSubview(signInButton)
        
        signUpButton = UIButton(type: .system)
        signUpButton.setTitle(D.Texts.createUserLabel, for: .normal)
        signUpButton.backgroundColor = .clear
        signUpButton.tintColor = D.Colors.greyTextColor
        textFieldsSV.addArrangedSubview(signUpButton)
        
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
        
        signInButton.snp.makeConstraints { $0.height.equalTo(D.Sizes.authButtonHeight) }
        
        signUpButton.snp.makeConstraints { $0.height.equalTo(D.Sizes.authButtonHeight) }
    }
}
