//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Вячеслав Мартынов on 16.05.2022.
//

import Foundation
import UIKit


class ProfileHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let avatarView: UIView = {
        let avatar = UIImageView(image: UIImage(named: "Avatar"))
        avatar.frame = CGRect(x: 16, y: 16, width: 80, height: 80)
        avatar.layer.cornerRadius = 40
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        avatar.layer.masksToBounds = true
        
        return avatar
    }()
    
    let headerView: UIView = {
        let header = UILabel(frame: CGRect(x: 150, y: 27, width: 100, height: 20))
        header.backgroundColor = .lightGray
        header.textColor = .black
        header.font = UIFont.boldSystemFont(ofSize: 18)
        header.text = "Super Dog"
        //не смог понять как привязать к центру ProfileHeaderView, выставил вручную 
        return header
    }()
    
    func addElements() {
        
        self.addSubview(avatarView)
        self.addSubview(headerView)
        
    }
    
}
    

    

