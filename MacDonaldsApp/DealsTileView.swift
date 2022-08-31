//
//  File.swift
//  MacDonaldsApp
//
//  Created by Mitya Kim on 8/31/22.
//

import Foundation
import UIKit

class DealsTileView: UIView {
    
    let imageView = UIImageView()
    let headerLabel = UILabel()
    let bodyHeaderLabel = UILabel()
    let bodyLabel = UILabel()
    let button = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DealsTileView {
    private func style() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 7
        imageView.image = UIImage(named: "2")
        
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.font = .systemFont(ofSize: 23, weight: .heavy)
        headerLabel.text = "Deals"
        headerLabel.textColor = .black
        
        bodyHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyHeaderLabel.font = .systemFont(ofSize: 28, weight: .heavy)
        bodyHeaderLabel.text = "Daily deals"
        bodyHeaderLabel.textColor = .black
        
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel.font = .systemFont(ofSize: 17, weight: .heavy)
        bodyLabel.text = "On everything you love"
        bodyLabel.textColor = .black
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("View deals", for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote, compatibleWith: .current)
        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.cornerRadius = 2
        button.setTitleColor(.label, for: .normal)
    }
    
    private func layout() {
        addSubview(imageView)
        addSubview(headerLabel)
        addSubview(bodyHeaderLabel)
        addSubview(bodyLabel)
        addSubview(button)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            imageView.topAnchor.constraint(equalToSystemSpacingBelow: headerLabel.bottomAnchor, multiplier: 1),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            
            bodyHeaderLabel.topAnchor.constraint(equalToSystemSpacingBelow: imageView.topAnchor, multiplier: 3),
            bodyHeaderLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            
            bodyLabel.topAnchor.constraint(equalToSystemSpacingBelow: bodyHeaderLabel.bottomAnchor, multiplier: 0),
            bodyLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            
            button.topAnchor.constraint(equalToSystemSpacingBelow: bodyLabel.bottomAnchor, multiplier: 2),
            button.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            button.widthAnchor.constraint(equalToConstant: 130),
            button.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
}
