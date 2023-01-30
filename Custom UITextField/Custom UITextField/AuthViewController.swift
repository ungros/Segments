//
//  AuthViewController.swift
//  Custom UITextField
//
//  Created by Roman on 19.01.2023.
//

import UIKit

final class AuthViewController: UIViewController, UITextFieldDelegate {
    
    private let registerTextField1 = RegisterTextField(placeholder: "Enter your login")
    private let registerTextField2 = RegisterTextField(placeholder: "Enter your password")
    
    private let eyeButton = EyeButton()
    
    private var isPrivate = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupView()
    }
    
    //MARK: - Actions
    @objc private func displayText1() {
        let imageName = isPrivate ? "eye" : "eye.slash"
        
        registerTextField1.isSecureTextEntry.toggle()
        eyeButton.setImage(UIImage(systemName: imageName), for: .normal)
        isPrivate.toggle()
    }
    
}



//MARK: - Settings View
private extension AuthViewController {
    
    func setupView() {
        
        view.backgroundColor = .systemCyan
        
        addSubViews()
        addActions()
        setupPasswordTF()
        setupLayout()
    }
}

//MARK: - Setting
private extension AuthViewController {
    
    func addSubViews() {
        view.addSubview(registerTextField1)
        view.addSubview(registerTextField2)
    }
    
    //actions for buttons in tf
    func addActions() {
        eyeButton.addTarget(self, action: #selector(displayText1), for: .touchUpInside)
        
    }
    
    func setupPasswordTF() {
        
        registerTextField1.delegate = self
        
        registerTextField1.rightView = eyeButton
        registerTextField1.rightViewMode = .always
        
    }
}

//MARK: - Constraints
private extension AuthViewController {
    
    func setupLayout() {
        registerTextField1.translatesAutoresizingMaskIntoConstraints = false
        
        registerTextField1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        registerTextField1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerTextField1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        
        
    }
}

extension AuthViewController {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        guard let text = textField.text else {return}
        eyeButton.isEnabled = !text.isEmpty
    }
}
