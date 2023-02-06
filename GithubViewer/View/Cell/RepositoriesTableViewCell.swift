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
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()

    lazy var repositoryLanguage: UILabel = {
        let label = UILabel()
        label.text = "Nada com tudo"
        label.textAlignment = .left
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
        
        repositoryName.anchor(top: container.topAnchor, leading: container.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 8, left: 12, bottom: 0, right: 0), size: .init(width: 150, height: 22))

        repositoryLanguage.anchor(top: repositoryName.bottomAnchor, leading: container.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 5, left: 12, bottom: 0, right: 0), size: .init(width: 150, height: 22))

    }
}

