//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Вячеслав Мартынов on 15.05.2022.
//

import UIKit



class ProfileViewController: UIViewController {
    
    let profileHeaderVC = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Profile"
        view.backgroundColor = .lightGray
        viewWillLayoutSubviews()

    }
    
    override func viewWillLayoutSubviews() {
        
        profileHeaderVC.frame = view.frame
        view.addSubview(profileHeaderVC)
        
        
    }
    
   
        
   

}
