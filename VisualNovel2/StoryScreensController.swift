//
//  StoryScreensController.swift
//  VisualNovel2
//
//  Created by Nikita on 24.02.2022.
//

import UIKit

let scens = [
    sceneHello,
    sceneCamp,
    sceneField,
    sceneRun,
    sceneFilm,
    sceneHellowinStart,
    sceneHellowinSuit,
    sceneHellowinSuitLike,
    sceneHellowinSuitNotLike,
    sceneFilmLike,
    sceneFilmNotLike]


class StoryScreensController: UIViewController {

    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var currentScene = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("Name"), object: nil)
        
        TextLabel.text = " Отлично, \(Saver.getSavedName())! Чем займемся?"
        Saver.saveCurrentScreen(controllerName: controllersNames.thirdScreen)
        currentScene = Saver.getSavedScene()
        loadSceneData(id: currentScene)
    }
    
    @objc func didGetNotification(_ notification: Notification){
        if let name = notification.object as! String?{
            TextLabel.text = " Отлично, \(name)! Чем займемся?"
            Saver.saveUserName(name: name)
        }

    }
    
    
    @IBAction func firstButtonClick(_ sender: UIButton) {
        loadSceneData(id: scens[currentScene].firstButton.nextScene)
    }
    
    @IBAction func secondButtonClick(_ sender: UIButton) {
        let nextScene = scens[currentScene].secondButton.nextScene
        if( nextScene > 0){
            loadSceneData(id: nextScene)
            return
        }
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: controllersNames.fourthScreen) as UIViewController
        nextViewController.modalPresentationStyle = .fullScreen
        

        self.present(nextViewController, animated: false, completion: nil)

    }
    
    @IBAction func thirdButtonClick(_ sender: UIButton) {
        loadSceneData(id: scens[currentScene].thirdButton.nextScene)
    }
    
    func loadSceneData(id: Int){
        Saver.saveCurrentScene(id: id)
        
        let curScene = scens[id]
        
        if(curScene.mainText.count != 0){
            TextLabel.text = scens[id].mainText
        }
        
        firstButton.setTitle(curScene.firstButton.text, for: .normal)
        secondButton.setTitle(curScene.secondButton.text, for: .normal)
        thirdButton.setTitle(curScene.thirdButton.text, for: .normal)
        
        firstButton.isHidden = !curScene.firstButton.isOnScreen
        secondButton.isHidden = !curScene.secondButton.isOnScreen
        thirdButton.isHidden = !curScene.thirdButton.isOnScreen
        
        if let backImage = curScene.backgroundPicture{
            backgroundImage.image = backImage
        }
        
        currentScene = id
    }
}
