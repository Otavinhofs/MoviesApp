//
//  CustomTableViewCell.swift
//  Rocket Reviews
//
//  Created by Otávio da Silva on 13/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var imageSeries: UIImageView!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var nameAuthors: UILabel!
    @IBOutlet weak var nameSeries: UILabel!

    func firstScreenInformation(_ media: Media) {
        imageSeries.image = media.image
        descriptionText.text = media.description
        nameAuthors.text = media.author.name
        nameSeries.text = media.title
    }

}
