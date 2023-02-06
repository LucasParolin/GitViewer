//
//  RepositoriesTableViewController.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import UIKit

class RepositoriesTableController: UIViewController {
    
    let customView = RepositoriesTableView()
    var repository: [Repository] = []

    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
    }
}


extension RepositoriesTableController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repository.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! RepositoriesTableViewCell
        let repo = repository[indexPath.item]
                
        cell.repositoryName.text = repo.name
        cell.repositoryLanguage.text = repo.language
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let urlTeste = repository[indexPath.item]
        if let url = URL(string: urlTeste.htmlUrl){
            UIApplication.shared.open(url)
        }
    }
}

