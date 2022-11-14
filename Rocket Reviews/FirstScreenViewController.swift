//
//  ViewController.swift
//  Rocket Reviews
//
//  Created by Julia Eileen Schäfer on 11/11/22.
//

import UIKit

class FirstScreenViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    
    var authors: [Author] = []
    var medias: [Media] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        authors = createAuthors()
        medias = createMedias()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.firstScreenInformation(medias[indexPath.row])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "SecondScreen", bundle: nil)
        let secondViewScreen = storyBoard.instantiateViewController(withIdentifier: "secondScreens") as! SecondScreenViewController
        secondViewScreen.modalPresentationStyle = .overFullScreen
        secondViewScreen.media = medias[indexPath.row]
        self.present(secondViewScreen, animated: true)
    }

}

