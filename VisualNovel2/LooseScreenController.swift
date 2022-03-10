//
//  LooseScreenController.swift
//  VisualNovel2
//
//  Created by Nikita on 10.03.2022.
//

import UIKit

class LooseScreenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Saver.saveCurrentScreen(controllerName: controllersNames.firstScreen)
        Saver.saveCurrentScene(id: 0)
        Saver.saveUserName(name: "")
    }
    
    @IBAction func repeatGame(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: controllersNames.firstScreen) as UIViewController
        nextViewController.modalPresentationStyle = .fullScreen
        
        self.present(nextViewController, animated: false, completion: nil)
    }
}
