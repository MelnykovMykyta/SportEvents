//
//  AuthVC.swift
//  SportEvents
//
//  Created by Nikita Melnikov on 17.12.2023.
//

import Foundation
import UIKit
import SnapKit

final class AuthVC: UIViewController {
    
    private var signInButton: UIButton!
    private var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        signInButton.addTarget(self, action: #selector(tapSignIn), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(tapSignUp), for: .touchUpInside)
    }
}

private extension AuthVC {
    
    @objc func tapSignIn() {
        VCChanger.changeVC(vc: SignInVC())
    }
    
    @objc func tapSignUp() {
        //        VCChanger.changeVC(vc: SignUpVC())
    }
}

private extension AuthVC {
    
    func setupView() {
        
        view.backgroundColor = D.Colors.mainColor
        
        let athlete = UIImageView()
        athlete.image = UIImage(named: "AthleteAuthVC")
        athlete.contentMode = .scaleAspectFit
        view.addSubview(athlete)
        
        let mainLabel = UILabel()
        mainLabel.text = D.Texts.mainVCLabel
        mainLabel.numberOfLines = 2
        mainLabel.font = UIFont(name: "Helvetica", size: 32)
        mainLabel.textColor = D.Colors.whiteTextColor
        mainLabel.adjustsFontSizeToFitWidth = true
        view.addSubview(mainLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = D.Texts.mainVCDesc
        descriptionLabel.numberOfLines = 5
        descriptionLabel.font = UIFont(name: "Helvetica-Light", size: 24)
        descriptionLabel.textColor = D.Colors.greyTextColor
        descriptionLabel.adjustsFontSizeToFitWidth = true
        view.addSubview(descriptionLabel)
        
        let buttonsSV = UIStackView()
        buttonsSV.axis = .horizontal
        buttonsSV.spacing = 20
        buttonsSV.distribution = .fillEqually
        view.addSubview(buttonsSV)
        
        signInButton = UIButton(type: .system)
        signInButton.setTitle(D.Texts.signInButtonLabel, for: .normal)
        signInButton.tintColor = D.Colors.whiteTextColor
        signInButton.backgroundColor = D.Colors.signInButtonColor
        signInButton.layer.cornerRadius = 12
        signInButton.layer.masksToBounds = true
        buttonsSV.addArrangedSubview(signInButton)
        
        signUpButton = UIButton(type: .system)
        signUpButton.setTitle(D.Texts.signUpButtonLabel, for: .normal)
        signUpButton.tintColor = D.Colors.greyTextColor
        signUpButton.layer.cornerRadius = 20
        signUpButton.layer.masksToBounds = true
        buttonsSV.addArrangedSubview(signUpButton)
        
        athlete.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.trailing.equalToSuperview().inset(D.Constraints.fourtyPoints)
            $0.height.equalToSuperview().multipliedBy(D.Sizes.halfSize)
        }
        
        mainLabel.snp.makeConstraints {
            $0.top.equalTo(athlete.snp.bottom).inset(-D.Constraints.twentyPoints)
            $0.leading.trailing.equalToSuperview().inset(D.Constraints.twentyPoints)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.top.equalTo(mainLabel.snp.bottom).inset(-D.Constraints.twentyPoints)
            $0.leading.trailing.equalToSuperview().inset(D.Constraints.twentyPoints)
        }
        
        buttonsSV.snp.makeConstraints {
            $0.height.equalTo(D.Sizes.authButtonHeight)
            $0.top.equalTo(descriptionLabel.snp.bottom).inset(-D.Constraints.fourtyPoints)
            $0.leading.trailing.equalToSuperview().inset(D.Constraints.twentyPoints)
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(D.Constraints.fourtyPoints)
        }
    }
}
