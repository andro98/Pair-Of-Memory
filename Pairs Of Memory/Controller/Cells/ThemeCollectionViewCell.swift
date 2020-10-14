//
//  ThemeCollectionViewCell.swift
//  Pairs Of Memory
//
//  Created by Andrew Maher on 10/14/20.
//  Copyright © 2020 Andrew Maher. All rights reserved.
//

import UIKit

class ThemeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var theme: ThemeModel?{
        didSet{
            if let theme = theme{
                title.text = theme.title
                //print(theme.title)
                imageView.image = theme.imgPath
                self.layer.shadowColor = UIColor.gray.cgColor
                self.layer.shadowRadius = 2
                self.layer.shadowOpacity = 2
            }
        }
    }

}
