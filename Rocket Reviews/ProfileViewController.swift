//
//  ProfileViewController.swift
//  Rocket Reviews
//
//  Created by Aline do Amaral on 14/11/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var someonesprofileLabel: UILabel!
    
    @IBOutlet weak var authorsAvatarImageView: UIImageView!
    
    @IBOutlet weak var authorsNameLabel: UILabel!
    
    @IBOutlet weak var authorsDescriptionLabel: UILabel!
    
//    func openUrl(url:String!) {      let targetURL=NSURL(fileURLWithPath: url)      let application=UIApplication.sharedApplication()      application.openURL(targetURL);  }
    
    
    @IBAction func linkedinButton(_ sender: UIButton) {
        
    }
    
    @IBAction func instagramButton(_ sender: UIButton) {
    }
    
    @IBAction func gitHubButton(_ sender: UIButton) {
    }
    
    var author: Author!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        valuesAuthor(author)
        
    }
    
    func valuesAuthor(_ author: Author) {
        someonesprofileLabel.text = "Perfil de \(author.name)"
        authorsAvatarImageView.image = author.avatar
        authorsNameLabel.text = author.name
        authorsDescriptionLabel.text = author.description
        
    }
}
