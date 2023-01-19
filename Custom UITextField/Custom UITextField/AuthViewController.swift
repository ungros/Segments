//
//  AuthViewController.swift
//  Custom UITextField
//
//  Created by Roman on 19.01.2023.
//

import UIKit

final class AuthViewController: UIViewController {
    
    private let registerTextField1 = RegisterTextField(placeholder: "Enter your login")
    private let registerTextField2 = RegisterTextField(placeholder: "Enter your password")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupView()
    }
    
}

//MARK: - Settings View
private extension AuthViewController {
    
    func setupView() {
        
        view.backgroundColor = .systemCyan
        
        addSubViews()
        setupLayout()
    }
}

//MARK: - Setting
private extension AuthViewController {
    
    func addSubViews() {
        view.addSubview(registerTextField1)
        view.addSubview(registerTextField2)
    }
}

//MARK: - Constraints
private extension AuthViewController {
    
    func setupLayout() {
        registerTextField1.translatesAutoresizingMaskIntoConstraints = false
        registerTextField2.translatesAutoresizingMaskIntoConstraints = false
        
        registerTextField1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        registerTextField1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerTextField1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        
        registerTextField2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 90).isActive = true
        registerTextField2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerTextField2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    }
}
