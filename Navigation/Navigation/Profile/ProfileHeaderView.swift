//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Вячеслав Мартынов on 16.05.2022.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText: String

    override init(frame: CGRect) {
        statusText = ""
        super.init(frame: frame)
        
        [avatarView, headerView, statusView, statusButton, statusChange, headerBack].forEach{addSubview($0)}
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let avatarView: UIImageView = {
        let avatar = UIImageView(image: UIImage(named: "Avatar"))
        avatar.frame = CGRect(x: 16, y: 92 + 16, width: 80, height: 80)
        avatar.layer.cornerRadius = 40
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = UIColor.white.cgColor
        avatar.layer.masksToBounds = true
        
        return avatar
    }()
    
    private let headerView: UILabel = {
        let header = UILabel(frame: CGRect(x: 150, y: 92 + 27, width: 100, height: 20))
        header.backgroundColor = .lightGray
        header.textColor = .black
        header.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        header.text = "Super Dog"
        //не смог понять как привязать к центру ProfileHeaderView, выставил вручную
        return header
    }()
    
    private let statusView: UILabel = {
        let status = UILabel(frame: CGRect(x: 150, y: 92 + 78, width: 300, height: 30))
        status.backgroundColor = .lightGray
        status.textColor = .gray
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        status.text = "Waiting for something..."
        
        return status
    }()
    
    private lazy var statusButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 16, y: 250, width: 350, height: 50))
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.setTitle("Get status", for: .normal)
        button.addTarget(self, action: #selector(showStatus), for: .touchUpInside)
        
        return button
    }()
    
    @objc private func showStatus() {
        statusView.text = statusText
        print(statusView.text ?? "No status")
        
    }
    
    private let statusChange: UITextField = {
       let status = UITextField(frame: CGRect(x: 150, y: 200, width: 220, height: 40))
        status.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        status.textColor = .black
        status.layer.borderColor = UIColor.black.cgColor
        status.layer.borderWidth = 1
        status.layer.backgroundColor = UIColor.white.cgColor
        status.layer.cornerRadius = 12
        status.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        
        return status
    }()
    
    @objc private func statusTextChanged(_ textField:UITextField) {
        let text = textField.text ?? ""
        statusText.removeAll()
        statusText.append(text)
    }
    
    private var headerBack: UIView = {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 92))
        header.backgroundColor = .white
        
        return header
    }()// не понял как полностью закрасить tab bar сверху, поэтому придумал такой костыль. Буду благодарен за подсказку
    
}
    

    

