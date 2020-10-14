//
//  HardTableViewController.swift
//  Pairs Of Memory
//
//  Created by Andrew Maher on 10/14/20.
//  Copyright © 2020 Andrew Maher. All rights reserved.
//

import UIKit

class HardTableViewController: UITableViewController {
    let hards: [String] = [
        "3x3",
        "4x4",
        "5x5",
        "6x6",
        "7x7",
        "8x8",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        adjustNavigationBar()
    }

    private func adjustNavigationBar(){
        let attrsSmall: [NSAttributedStringKey: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 32)
        ]
        
        let attrsLarge: [NSAttributedStringKey: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 50)
        ]
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = attrsSmall
        navigationController?.navigationBar.largeTitleTextAttributes = attrsLarge
        title = "How Hard You Want!"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hards.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hardCell", for: indexPath)
        let text = cell.viewWithTag(1000) as! UILabel
        text.text = hards[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GameNav"{
            if let indexPath = tableView.indexPath(for: sender as! UITableViewCell){
                GameCore.setSelectedHard(hard: indexPath.row)
            }
        }
    }
}
