//
//  GameCore.swift
//  Pairs Of Memory
//
//  Created by Andrew Maher on 10/14/20.
//  Copyright © 2020 Andrew Maher. All rights reserved.
//

import Foundation

class GameCore{
    static let gameCore = GameCore()
    
    private var selectedTheme: ThemeModel?
    private var selectedHard: Int?
    
    private init() {
    }
    
    static func setSelectedTheme(theme: ThemeModel){
        gameCore.selectedTheme = theme
        //print(gameCore.selectedTheme?.title)
    }
    
    static func setSelectedHard(hard: Int){
        gameCore.selectedHard = hard
    }
    
    static func getHard() -> Int{
        if let hard = gameCore.selectedHard{
            return hard + 3
        }
        return -1
    }
}
