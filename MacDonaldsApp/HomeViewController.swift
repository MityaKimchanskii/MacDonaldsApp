//
//  ViewController.swift
//  MacDonaldsApp
//
//  Created by Mitya Kim on 8/30/22.
//

import UIKit

class HomeViewController: MacDonaldsViewController {
    
    let headerView = HeaderView()
    let headerTileView = HeaderTileView()
    let menuTileView = MenuTileView()
    let dealsTileView = DealsTileView()
    let rewardsAndDealsTileView = RewardsAndDealsTileView()
    
    let scrollView = UIScrollView()
    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = view.bounds.size
        setTabBarImageNamed(imageName: "mcdonalds", title: "Home")
        view.backgroundColor = .systemGray6
        style()
        layout()
    }
}

extension HomeViewController {
    func style() {
        headerTileView.translatesAutoresizingMaskIntoConstraints = false
        
//        menuTileView.translatesAutoresizingMaskIntoConstraints = false
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.contentMode = .scaleAspectFit
        stackView.axis = .vertical
        stackView.spacing = 30
    }
    
    func layout() {
        view.addSubview(headerView)
        view.addSubview(scrollView)
        
        scrollView.addSubview(headerTileView)
        scrollView.addSubview(stackView)
        
        stackView.addArrangedSubview(menuTileView)
        stackView.addArrangedSubview(dealsTileView)
        stackView.addArrangedSubview(rewardsAndDealsTileView)
        
        
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            scrollView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 4),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            headerTileView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            headerTileView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            headerTileView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            headerTileView.heightAnchor.constraint(equalToConstant: 170),
            headerTileView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: headerTileView.bottomAnchor, multiplier: 3),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: scrollView.leadingAnchor, multiplier: 3),
            scrollView.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 3),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
//            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            menuTileView.heightAnchor.constraint(equalToConstant: 200),
            menuTileView.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            dealsTileView.heightAnchor.constraint(equalToConstant: 200),
            dealsTileView.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            rewardsAndDealsTileView.heightAnchor.constraint(equalToConstant: 200),
            rewardsAndDealsTileView.widthAnchor.constraint(equalTo: stackView.widthAnchor),
        ])
    }
}

extension HomeViewController: UIScrollViewDelegate {
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        return true
    }
}
