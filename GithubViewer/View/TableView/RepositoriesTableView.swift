//
//  RepositoriesTableView.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import UIKit

class RepositoriesTableView: UIView {
    
    let cellId = "cellId"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: bounds)
        tableView.register(RepositoriesTableViewCell.self, forCellReuseIdentifier: cellId)
        return tableView
    }()
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logotipo-do-github")
        return image
    }()
    
    lazy var backgroundContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        addSubview(imageLogo)
        addSubview(backgroundContainer)
        backgroundContainer.addSubview(tableView)
        setConstraints()
    }
    
    func setConstraints() {
        
        imageLogo.anchor(top: safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 120, height: 120))
        imageLogo.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        backgroundContainer.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 160, left: 20, bottom: 80, right: 20), size: .init(width: 300, height: 400))
        
        tableView.anchor(top: backgroundContainer.topAnchor, leading: backgroundContainer.leadingAnchor, bottom: backgroundContainer.bottomAnchor, trailing: backgroundContainer.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: bounds.width, height: bounds.height))
        
    }
}
