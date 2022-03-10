//
//  ViewController.swift
//  VisualNovel2
//
//  Created by Nikita on 19.02.2022.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var BeginButton: UIButton!
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    var nextScreen = controllersNames.secondScreen
    
    @IBAction func onEditingUserName(_ sender: UITextField) {
        if let name = sender.text{
            NotificationCenter.default.post(name: Notification.Name("Name"), object: name)
            Saver.saveUserName(name: name)
        }

    }    
    @IBAction func NextScene(_ sender: UIButton) {   
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: nextScreen) as UIViewController
        nextViewController.modalPresentationStyle = .fullScreen
        Saver.saveCurrentScreen(controllerName: nextScreen)
        self.present(nextViewController, animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let savedScreen = Saver.getSavedScreen()
        if savedScreen != controllersNames.firstScreen{
            nextScreen = savedScreen
            BeginButton?.setTitle("Продолжить", for: .normal)
        }
        
        print(Saver.getSavedName())
        // Do any additional setup after loading the view.
    }
}

