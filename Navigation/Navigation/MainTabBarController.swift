//
//  MainTabBarController.swift
//  Navigation
//
//  Created by Вячеслав Мартынов on 15.05.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    let feedVC = UINavigationController(rootViewController: FeedViewController())
    let profileVC = UINavigationController(rootViewController: ProfileViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()

    }
    
    private func setupControllers() {
        
        
        feedVC.tabBarItem.title = "Feed"
        feedVC.tabBarItem.image = UIImage(systemName: "person.3.sequence.fill")
        profileVC.tabBarItem.title = "Profile"
        profileVC.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        tabBar.backgroundColor = .white
        viewControllers = [feedVC, profileVC]
    }

}
