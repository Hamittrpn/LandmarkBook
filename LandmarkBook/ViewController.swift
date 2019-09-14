//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Hamit  Tırpan on 14.09.2019.
//  Copyright © 2019 Hamit  Tırpan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Xamarin Binding Context benzeri olan yapı
        tableView.delegate = self
        tableView.dataSource = self
        
        // landmarkNames ve landmarkImages appendlerini aynı sırada koyuyorum.Çünkü diziler order'lı çalışır ve indexler.
        // Landmark Book Data
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Taj Mahal")
        
        
        landmarkImages.append(UIImage(named: "colosseum")!)
        landmarkImages.append(UIImage(named: "GreatWall")!)
        landmarkImages.append(UIImage(named: "Kremlin")!)
        landmarkImages.append(UIImage(named: "Stonehenge")!)
        landmarkImages.append(UIImage(named: "TajMahal")!)
    }
    // Sola çekerek silme işlemi için kullanılan hazır function
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    // TableView'ımda kaç tane row olacağını belirtiyorum
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
}

