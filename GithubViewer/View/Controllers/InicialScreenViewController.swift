//
//  InicialScreenViewController.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import UIKit

class InicialScreenViewController: UIViewController {
    
    let customView = InicialScreenView()
    let getApi = GetApi()
    
    override func loadView() {
        view = customView
        
        customView.searchUser.addTarget(self, action: #selector(getData), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func getData() {
        
        getApi.getInfo(User.self, url: "https://api.github.com/users/\(customView.userName.text ?? "")") { user in
            guard let user = user else{
                return
            }
            
            self.getApi.getInfo([Repository].self, url: "https://api.github.com/users/\(self.customView.userName.text ?? "")/repos") {repos in
                guard let repos = repos else{
                    return
                }
                // AQUI BOTA A LÓGICA PRA PASSAR DE TELA PRA TELA MEU AMIGÃO
                let repositoriesTableController = RepositoriesTableController()
                repositoriesTableController.customView.lblName.text = user.name
                repositoriesTableController.customView.imageLogo.downloaded(from: user.avatarUrl ?? "")
                repositoriesTableController.repository = repos
                self.navigationController?.pushViewController(repositoriesTableController, animated: true)
            }
        }
    }
}

extension InicialScreenViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
