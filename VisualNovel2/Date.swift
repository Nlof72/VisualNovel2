//
//  Date.swift
//  VisualNovel2
//
//  Created by Nikita on 06.03.2022.
//

import Foundation
import UIKit

struct controllersNames{
    static let firstScreen = "startWindow"
    static let secondScreen = "inputName"
    static let thirdScreen = "stroryList"
    static let fourthScreen = "endGame"
}

struct buttonInfo{
    let text: String
    let isOnScreen: Bool
    let nextScene: Int
}


struct sceneInfo{
    let number: Int
    let mainText: String
    let firstButton: buttonInfo
    let secondButton: buttonInfo
    let thirdButton: buttonInfo
    let backgroundPicture: UIImage?
}

let sceneHello = sceneInfo(
    number: 0,
    mainText: "",
    firstButton: buttonInfo(
        text: "Пойдем на пробежку",
        isOnScreen: true,
        nextScene: 3),
    secondButton: buttonInfo(
        text: "Пойдем в поход",
        isOnScreen: true,
        nextScene: 1),
    thirdButton: buttonInfo(
        text: "Погуляем по полю",
        isOnScreen: true,
        nextScene: 2),
    backgroundPicture: UIImage(named: "backKir")
)

let sceneCamp = sceneInfo(
    number: 1,
    mainText: "Как уютно... Но уже темнеет.",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Пойдем домой и посмотрим фильм",
        isOnScreen: true,
        nextScene: 4),
    thirdButton: buttonInfo(
        text: "Пойдем домой и отпразднуем Хэллоуин",
        isOnScreen: true,
        nextScene: 5),
    backgroundPicture: nil
)

let sceneField = sceneInfo(
    number: 2,
    mainText: "Тебе грустно... Пойдем домой?",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Пойдем домой и посмотрим фильм",
        isOnScreen: true,
        nextScene: 4),
    thirdButton: buttonInfo(
        text: "Пойдем домой и отпразднуем Хэллоуин",
        isOnScreen: true,
        nextScene: 5),
    backgroundPicture: UIImage(named: "fieldBack")
)

let sceneRun = sceneInfo(
    number: 3,
    mainText: "Может, пойдем домой?..",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Пойдем домой и посмотрим фильм",
        isOnScreen: true,
        nextScene: 4),
    thirdButton: buttonInfo(
        text: "Пойдем домой и отпразднуем Хэллоуин",
        isOnScreen: true,
        nextScene: 5),
    backgroundPicture: UIImage(named: "sportBack")
)

let sceneFilm = sceneInfo(
    number: 4,
    mainText: "Как тебе фильм?",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Мне понравился!",
        isOnScreen: true,
        nextScene: 9),
    thirdButton: buttonInfo(
        text: "Не очень...",
        isOnScreen: true,
        nextScene: 10),
    backgroundPicture: UIImage(named: "watchBack")
)

let sceneHellowinStart = sceneInfo(
    number: 5,
    mainText: "Получается очень красиво!",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Да! Может, посмотрим фильм?",
        isOnScreen: true,
        nextScene: 4),
    thirdButton: buttonInfo(
        text: "Да! Давай сделаем костюмы!",
        isOnScreen: true,
        nextScene: 6),
    backgroundPicture: UIImage(named: "hollowinBack")
)

let sceneHellowinSuit = sceneInfo(
    number: 6,
    mainText: "Мне нравится твой костюм.",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Твой тоже очень красивый!",
        isOnScreen: true,
        nextScene: 7),
    thirdButton: buttonInfo(
        text: "А мне, если честно, не нравится твой...",
        isOnScreen: true,
        nextScene: 8),
    backgroundPicture: UIImage(named: "hollowinCostume")
)

let sceneHellowinSuitLike = sceneInfo(
    number: 7,
    mainText: "Спасибо! Ну, пойдем спать?",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Да, уже поздно...",
        isOnScreen: true,
        nextScene: -11),
    thirdButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    backgroundPicture: nil
)

let sceneHellowinSuitNotLike = sceneInfo(
    number: 8,
    mainText: "Ничего, я не в обиде. Пойдем спать?",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Да, уже поздно...",
        isOnScreen: true,
        nextScene: -11),
    thirdButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    backgroundPicture: nil
)

let sceneFilmLike = sceneInfo(
    number: 9,
    mainText: "Отлично! А теперь пора спать...",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Да, уже поздно...",
        isOnScreen: true,
        nextScene: -11),
    thirdButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    backgroundPicture: nil
)

let sceneFilmNotLike = sceneInfo(
    number: 10,
    mainText: "Жаль... Тогда пойдем спать?",
    firstButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    secondButton: buttonInfo(
        text: "Да, уже поздно...",
        isOnScreen: true,
        nextScene: -11),
    thirdButton: buttonInfo(
        text: "",
        isOnScreen: false,
        nextScene: -1),
    backgroundPicture: nil
)

//let sceneEndGame = sceneInfo(
//    number: 11,
//    mainText: "Спасибо, что поиграли!",
//    firstButton: buttonInfo(
//        text: "",
//        isOnScreen: false,
//        nextScene: -1),
//    secondButton: buttonInfo(
//        text: "Пройти еще раз",
//        isOnScreen: true,
//        nextScene: -1),
//    thirdButton: buttonInfo(
//        text: "",
//        isOnScreen: false,
//        nextScene: -1)
//)
