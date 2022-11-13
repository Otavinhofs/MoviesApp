//
//  AuthorStruct.swift
//  Rocket Reviews
//
//  Created by Otávio da Silva on 13/11/22.
//

import UIKit

struct Author {
    var name: String
    var avatar: UIImage
    var description: String
    var github: String?
    var instagram: String?
    var linkedin: String?
    
    init(name: String, avatar: UIImage, description: String, github: String? = nil, instagram: String? = nil, linkedin: String? = nil) {
        self.name = name
        self.avatar = avatar
        self.description = description
        self.github = github
        self.instagram = instagram
        self.linkedin = linkedin
    }
}
