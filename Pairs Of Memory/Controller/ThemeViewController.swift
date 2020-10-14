//
//  ViewController.swift
//  Pairs Of Memory
//
//  Created by Andrew Maher on 10/14/20.
//  Copyright © 2020 Andrew Maher. All rights reserved.
//

import UIKit

class ThemeViewController: UIViewController {
    
    private let themes: [ThemeModel] = [
        ThemeModel(id: 1, title: "Animal", imgPath: #imageLiteral(resourceName: "Unicorn")),
        ThemeModel(id: 2, title: "Music", imgPath: #imageLiteral(resourceName: "Kangaro")),
    ]

    @IBOutlet var themeCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adjustNavigationBar()
        themeCollection.delegate = self
        themeCollection.dataSource = self
        
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
        title = "Choose a Theme"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HardNav"{
            if let indexPath = themeCollection.indexPath(for: sender as! UICollectionViewCell){
               GameCore.setSelectedTheme(theme: themes[indexPath.item])
            }
        }
    }
}

extension ThemeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return themes.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ThemeCell", for: indexPath) as! ThemeCollectionViewCell
        cell.theme = themes[indexPath.item]
        return cell
    }
    
}

