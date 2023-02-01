//
//  RepositoriesTableViewCell.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import UIKit

class RepositoriesTableViewCell: BaseCell{
    
    lazy var container: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.layer.borderWidth = 1
        return view
    }()
    
    lazy var repositoryName: UILabel = {
        let label = UILabel()
        label.text = "Nada com nada"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()

    lazy var repositoryLanguage: UILabel = {
        let label = UILabel()
        label.text = "Nada com tudo"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()

    override func addSubviews() {
        addSubview(container)
        container.addSubview(repositoryName)
        container.addSubview(repositoryLanguage)
    }
    
    override func setConstraints() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 5, left: 15, bottom: 5, right: 15), size: .init(width: frame.width, height: 60))
        
        repositoryName.anchor(top: container.topAnchor, leading: nil, bottom: container.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 150, height: 15))
        repositoryName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        repositoryName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true

        repositoryLanguage.anchor(top: container.topAnchor, leading: nil, bottom: container.bottomAnchor, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 150, height: 15))
        repositoryLanguage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

    }
}

