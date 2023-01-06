//
//  main.swift
//  DZ #3
//
//  Created by merim kasenova on 5/1/23.
//

import Foundation

print("Hello, World!")

 //Домашнее задание №3
//Д/З №3 Циклы: for, while, repeat while
//№1. Создать функцию, которая будет считать количество символов, пробелов и выдавать всё как итог в конце

var text = "Закрыть, открыть входные двери и окна.Соблюдать спокойствие!"

func infoText(text: String){
    
    var spacesButton = 0
    var symbolsButton = 0
    var marksButton = 0
    var lettersButton = 0
    
    for char in text{
        if char == " " {
            spacesButton += 1
            symbolsButton += 1
        }else if char == "," || char == "." || char == "!" {
            marksButton += 1
            symbolsButton += 1
        }else {
            lettersButton += 1
            symbolsButton += 1
        }
    }
    print("В тексте \(spacesButton)пробелов, \(marksButton)знаков препинания, \(lettersButton) букв, \(symbolsButton)символов")
}
 
////№2. Создать функцию, которая будет считать количество определенных букв в строке
func countLetter(text: String, specialLetter: Character){
    var counter = 0
    for char in text {
        if char == specialLetter{
            counter += 1
        }
    }
    print("В тексте букв\"\(specialLetter)\": \(counter)")
}
countLetter(text: text, specialLetter: "е")

////№3. Создать функцию, которая будет выдавать "ААА" если передать туда число 3(например)
//
func makeA(number: Int){
    var result = ""
    var number = number

    while number != 0 {
        number -= 1
        result += "A"
    }
    print(result)
}
makeA(number:3)
