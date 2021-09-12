//
//  Questions_Eng.swift
//  Quizzler-iOS13
//
//  Created by Yanuar Heru on 12/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Questions_Eng {
    let pool:[Question] = [TrueOrFalse(q: "A slug's blood is green.", a: "True"),
                           MultipleChoice(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                           TrueOrFalse(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                           MultipleChoice(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                           TrueOrFalse(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                           MultipleChoice(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                           TrueOrFalse(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                           TrueOrFalse(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                           MultipleChoice(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                           TrueOrFalse(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                           MultipleChoice(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                           TrueOrFalse(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                           MultipleChoice(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                           TrueOrFalse(q: "Google was originally called 'Backrub'.", a: "True"),
                           MultipleChoice(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                           TrueOrFalse(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                           MultipleChoice(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                           TrueOrFalse(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                           MultipleChoice(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                           TrueOrFalse(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                           MultipleChoice(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia"),
                           TrueOrFalse(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]
}
