//
//  MediaStruct.swift
//  Rocket Reviews
//
//  Created by Otávio da Silva on 13/11/22.
//

import UIKit

struct Media {
    var title: String
    var image: UIImage
    var description: String
    var synopsis: String
    var review: String
    var author: Author
    
    init(title: String, image: UIImage, description: String, synopsis: String, review: String, author: Author) {
        self.title = title
        self.image = image
        self.description = description
        self.synopsis = synopsis
        self.review = review
        self.author = author
    }
    
}
