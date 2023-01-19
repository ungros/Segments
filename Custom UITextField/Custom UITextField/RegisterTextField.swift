//
//  RegisterTextField.swift
//  Custom UITextField
//
//  Created by Roman on 19.01.2023.
//

import UIKit

final class RegisterTextField: UITextField {
    
    //MARK: - Private Property
    private let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 40)
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        setupSextField(placeholder: placeholder)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Override Methods
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    //MARK: - Private Methods
    private func setupSextField(placeholder: String) {
        textColor = .white
        
        layer.cornerRadius = 20
        layer.backgroundColor = .init(red: 0.2, green: 0.7, blue: 5, alpha: 1)
        
        layer.shadowColor = UIColor.black.cgColor
        layer.cornerRadius = 4
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 10, height: 10)
        
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray])
        font = .boldSystemFont(ofSize: 18)
        
        heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }
}
