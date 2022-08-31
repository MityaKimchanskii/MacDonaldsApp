//
//  AppDelegate.swift
//  MacDonaldsApp
//
//  Created by Mitya Kim on 8/30/22.
//

import UIKit

class MacDonaldsViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit() {}
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
    
    func setTabBarImageNamed(imageName: String, title: String) {
        let image = UIImage(named: imageName)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}

class OrderViewController: MacDonaldsViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Order"
    }
    
    override func commonInit() {
        setTabBarImageNamed(imageName: "french-fries", title: "Order")
    }
}

class RewardsAndDealsViewController: MacDonaldsViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        title = "Rewards & Deals"
    }
    
    override func commonInit() {
        setTabBarImageNamed(imageName: "hamburger", title: "Rewards & Deals")
    }
}

class DealCodeViewController: MacDonaldsViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemYellow
        title = "Deal code"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "qrcode", title: "Deal code")
    }
}

class MoreViewController: MacDonaldsViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemRed
        title = "More"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "ellipsis", title: "More")
    }
}


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        let homeVC = HomeViewController()
        let orderVC = OrderViewController()
        let rewardsAndDealsVC = RewardsAndDealsViewController()
        let dealCodeVC = DealCodeViewController()
        let moreVC = MoreViewController()
        
        let orderNC = UINavigationController(rootViewController: orderVC)
        let rewardsAndDealsNC = UINavigationController(rootViewController: rewardsAndDealsVC)
        let dealCodeNC = UINavigationController(rootViewController: dealCodeVC)
        let moreNC = UINavigationController(rootViewController: moreVC)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [homeVC, orderNC, rewardsAndDealsNC, dealCodeNC, moreNC]
        
        tabBarController.tabBar.tintColor = UIColor(named: "macdonaldsColor")
        tabBarController.tabBar.isTranslucent = false
        
        window?.rootViewController = tabBarController
        
        return true
    }
}

