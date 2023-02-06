//
//  GetApi.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 03/02/23.
//

import Foundation


class GetApi {
    
    func getInfo<T>(_ value: T.Type, url: String, completion: @escaping (T?) -> Void) where T: Decodable{
        
        guard let baseUrl = URL(string: url) else { return }
        var request = URLRequest(url: baseUrl)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            let response = response as! HTTPURLResponse
            
            if response.statusCode < 400 {
                if let data = data {
//                    print(String(data: data, encoding: .utf8))
                    
                    let jsonDecoder = JSONDecoder()
                    jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                    
                    let json = try? jsonDecoder.decode(T.self, from: data)
                    DispatchQueue.main.async {
                        completion(json)
                    }
                } else{
                    completion(nil)
                }
            } else {
                completion(nil)
            }
        }
        task.resume()
    }
}
