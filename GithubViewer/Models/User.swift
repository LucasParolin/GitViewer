//
//  User.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import Foundation

struct User: Codable {
    var login: String
    var name: String
    var reposUrl: String
    var avatarUrl: String?
}
