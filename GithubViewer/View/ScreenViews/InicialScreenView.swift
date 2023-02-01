//
//  InicialScreenView.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import UIKit

class InicialScreenView: BaseView {
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logotipo-do-github")
        return image
    }()
    
    lazy var userName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Nome de usuário"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var searchUser: UIButton = {
        let button = UIButton()
        button.setTitle("Buscar usuário", for: .normal)
        button.backgroundColor = .black
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        return button
    }()
    
    override func addsubViews() {
        addSubview(imageLogo)
        addSubview(userName)
        addSubview(searchUser)
    }
    override func addConstraints() {
        
        imageLogo.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 200))
        imageLogo.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        userName.anchor(
            top: imageLogo.bottomAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 80, left: 60, bottom: 0, right: 60),
            size: .init(width: 0, height: 0))
        userName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        searchUser.anchor(
            top: userName.bottomAnchor,
            leading: userName.leadingAnchor,
            bottom: nil,
            trailing: userName.trailingAnchor,
            padding: .init(top: 40, left: 30, bottom: 0, right: 30),
            size: .init(width: 0, height: 0))
        searchUser.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
    }
    
}
