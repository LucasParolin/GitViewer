//
//  InicialScreenViewController.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import UIKit

class InicialScreenViewController: UIViewController {

    let customView = InicialScreenView()
    
    override func loadView() {
        view = customView
        
        customView.searchUser.addTarget(self, action: #selector(getData), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @objc func getData(){
        
        var semaphore = DispatchSemaphore (value: 0)

        var request = URLRequest(url: URL(string: "https://api.github.com/users/\(customView.userName.text ?? "")")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            semaphore.signal()
            return
          }
            
            let decoder = JSONDecoder()
            
          print(String(data: data, encoding: .utf8)!)
          semaphore.signal()
        }

        task.resume()
        semaphore.wait()
        
        let repositoriesTableController = RepositoriesTableController()
        self.navigationController?.pushViewController(repositoriesTableController, animated: true)
    }

}

