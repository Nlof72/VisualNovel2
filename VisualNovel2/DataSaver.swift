//
//  DataSaver.swift
//  VisualNovel2
//
//  Created by Nikita on 10.03.2022.
//

import Foundation


struct Saver{
    private static let defaults = UserDefaults.standard
    
    static func saveCurrentScene(id: Int){
        defaults.set(id, forKey: KeysGame.currentStep)
    }
    
    static func saveCurrentScreen(controllerName: String){
        defaults.set(controllerName, forKey: KeysGame.currentScreen)
    }
    
    static func saveUserName(name: String){
        defaults.set(name, forKey: KeysGame.currentName)
    }
    
    static func getSavedScene() -> Int {
        return defaults.integer(forKey: KeysGame.currentStep)
    }
    
    static func getSavedScreen() -> String {
        if let screen = defaults.string(forKey: KeysGame.currentScreen){
            return screen
        }else{
            return controllersNames.firstScreen
        }
    }
    
    static func getSavedName() -> String {
        if let name = defaults.string(forKey: KeysGame.currentName){
            return name
        }else{
            return "";
        }
    }
}


struct KeysGame {
    static let currentStep = "currentStep"
    static let currentScreen = "currentScreen"
    static let currentName = "currentName"
}
