//
//  GameViewController.swift
//  Pairs Of Memory
//
//  Created by Andrew Maher on 10/14/20.
//  Copyright © 2020 Andrew Maher. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonsView)
        let hard = GameCore.getHard()
        let width = (view.frame.width - 40) / CGFloat(hard + 1)
        let height = (view.frame.height - 40) / CGFloat(hard + 1)
        let logoImage = UIImage(named: "Logo")
        for row in 0..<4{
            for col in 0..<4{
                let imageButton = UIButton(type: .custom)
                imageButton.setBackgroundImage(logoImage, for: UIControlState.normal)
                imageButton.addTarget(self, action: #selector(imageTapped), for: .touchUpInside)
                imageButton.layer.borderWidth = 1
                imageButton.layer.borderColor = UIColor.gray.cgColor
                let frame = CGRect(x: CGFloat(col) * width, y: CGFloat(row) * height, width: width, height: height)
                imageButton.frame = frame
                buttonsView.addSubview(imageButton)
            }
        }
        
        NSLayoutConstraint.activate([
            buttonsView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20),
            buttonsView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            buttonsView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20),
            ])
    }
    
    @objc func imageTapped(){
        
    }
}
