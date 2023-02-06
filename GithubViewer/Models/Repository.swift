//
//  Repository.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import Foundation

struct Repository: Decodable {
    var name: String
    var language: String?
    var htmlUrl: String
}
