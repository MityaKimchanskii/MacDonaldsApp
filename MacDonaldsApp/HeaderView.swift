//
//  HeaderView.swift
//  MacDonaldsApp
//
//  Created by Mitya Kim on 8/30/22.
//

import Foundation
import UIKit

class HeaderView: UIView {
    let headerImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HeaderView {
    private func style() {
        headerImageView.translatesAutoresizingMaskIntoConstraints = false
        headerImageView.image = UIImage(named: "mcdonaldsHeaderImage")
        backgroundColor = .systemGreen
    }
    
    private func layout() {
        addSubview(headerImageView)
        
        NSLayoutConstraint.activate([
            headerImageView.topAnchor.constraint(equalTo: topAnchor),
            headerImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            headerImageView.widthAnchor.constraint(equalToConstant: 30),
            headerImageView.heightAnchor.constraint(equalToConstant: 30),
            widthAnchor.constraint(equalToConstant: 35)
        ])
    }
}
