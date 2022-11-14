//
//  SecondScreenViewController.swift
//  Rocket Reviews
//
//  Created by Otávio da Silva on 13/11/22.
//

import UIKit

class SecondScreenViewController: UIViewController {
    @IBOutlet weak var imageMedia: UIImageView!
    @IBOutlet weak var imageAuthors: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var analysisLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var resumeLabel: UILabel!
    @IBOutlet weak var nameAuthors: UILabel!
    var media: Media!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        valuesMedia(media)
        

    }
    

    @IBAction func perfilScreen(_ sender: Any) {
        
    }
    
    @IBAction func backTap(_ sender: Any) {
        self.dismiss(animated: true)
        
    }
    
    func valuesMedia(_ media: Media) {
        imageMedia.image = media.image
        titleLabel.text = media.title
        analysisLabel.text = media.review
        synopsisLabel.text = media.synopsis
        resumeLabel.text = media.description
        nameAuthors.text = media.author.name
        imageAuthors.image = media.author.avatar
    }
    
}
