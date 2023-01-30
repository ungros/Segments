//
//  EyeButton.swift
//  Custom UITextField
//
//  Created by Roman on 29.01.2023.
//

import UIKit

final class EyeButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupEyeButton()
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupEyeButton() {
        setImage(UIImage(systemName: "eye.fill"), for: .normal)
        widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
}

