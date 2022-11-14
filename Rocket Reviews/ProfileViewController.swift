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
    var author: Author!
//    func openUrl(url:String!) {      let targetURL=NSURL(fileURLWithPath: url)      let application=UIApplication.sharedApplication()      application.openURL(targetURL);  }
    
    
    @IBAction func linkedinButton(_ sender: UIButton) {
        openUrl(urlStr: author.linkedin)
    }
    
    @IBAction func instagramButton(_ sender: UIButton) {
        openUrl(urlStr: author.instagram)
    }
    
    @IBAction func gitHubButton(_ sender: UIButton) {
        openUrl(urlStr: author.github)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valuesAuthor(author)
        
    }
    
    
    @IBAction func backButtonClick(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    func valuesAuthor(_ author: Author) {
        someonesprofileLabel.text = "Perfil de \(author.name)"
        authorsAvatarImageView.image = author.avatar
        authorsNameLabel.text = author.name
        authorsDescriptionLabel.text = author.description
        
    }
    func openUrl(urlStr: String!) {
        if let url = URL(string:urlStr), !url.absoluteString.isEmpty {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}
