//
//  HeaderTile.swift
//  MacDonaldsApp
//
//  Created by Mitya Kim on 8/30/22.
//

import Foundation
import UIKit

class HeaderTileView: UIView {
    
    let dealLabel = UILabel()
    let detailsLabel = UILabel()
    let startOrderButton = UIButton()
    let viewDealsButton = UIButton()
    let imageView = UIImageView()
    let buttonStackView = UIStackView()
    let labelStackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .systemRed
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HeaderTileView {
    private func style() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "mac3")
        
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.axis = .horizontal
        buttonStackView.spacing = 20
        buttonStackView.distribution = .fillEqually
        
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        labelStackView.axis = .vertical
        labelStackView.spacing = 10
        labelStackView.distribution = .fillProportionally
        
        dealLabel.translatesAutoresizingMaskIntoConstraints = false
        dealLabel.font = .systemFont(ofSize: 28, weight: .heavy)
        dealLabel.text = "Discover your deal"
        dealLabel.numberOfLines = 0
        dealLabel.lineBreakMode = .byWordWrapping
        dealLabel.textColor = .white
        
        detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        detailsLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        detailsLabel.text = "There's fresh offers every week"
        detailsLabel.numberOfLines = 0
        detailsLabel.lineBreakMode = .byWordWrapping
        detailsLabel.textColor = .white
        
        startOrderButton.translatesAutoresizingMaskIntoConstraints = false
        startOrderButton.setTitle("Start order", for: .normal)
        startOrderButton.backgroundColor = UIColor(named: "macdonaldsColor")
        startOrderButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote, compatibleWith: .current)
        startOrderButton.clipsToBounds = true
        startOrderButton.layer.cornerRadius = 2
        startOrderButton.setTitleColor(.label, for: .normal)
        
        viewDealsButton.translatesAutoresizingMaskIntoConstraints = false
        viewDealsButton.setTitle("View deals", for: .normal)
        viewDealsButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote, compatibleWith: .current)
        viewDealsButton.backgroundColor = .white
        viewDealsButton.clipsToBounds = true
        viewDealsButton.layer.cornerRadius = 2
        viewDealsButton.setTitleColor(.label, for: .normal)
    }
    
    private func layout() {
        addSubview(imageView)
        addSubview(labelStackView)
        addSubview(buttonStackView)

        labelStackView.addArrangedSubview(dealLabel)
        labelStackView.addArrangedSubview(detailsLabel)

        buttonStackView.addArrangedSubview(startOrderButton)
        buttonStackView.addArrangedSubview(viewDealsButton)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            labelStackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 2),
            labelStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 3),
            trailingAnchor.constraint(equalToSystemSpacingAfter: labelStackView.trailingAnchor, multiplier: 15),

            buttonStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 3),
            trailingAnchor.constraint(equalToSystemSpacingAfter: buttonStackView.trailingAnchor, multiplier: 3),
            bottomAnchor.constraint(equalToSystemSpacingBelow: buttonStackView.bottomAnchor, multiplier: 2),
            
            startOrderButton.heightAnchor.constraint(equalToConstant: 35),
            
            viewDealsButton.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
}
