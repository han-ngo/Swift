//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice1: "I'll hop in. Thanks for the help!", choice1Dest: 1,
            choice2: "Better ask him if he's a murderer first.", choice2Dest: 2),
        Story(title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice1: "I love Elton John! Hand him the cassette tape.", choice1Dest: 3,
            choice2: "It’s him or me. Take the knife and stab him.", choice2Dest: 4),
        Story(title: "He nods slowly, unphased by the question.",
            choice1: "At least he's honest. I'll climb in.", choice1Dest: 1,
            choice2: "Wait, I know how to change a tire.", choice2Dest: 5),
        Story(title: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"",
            choice1: "Restart", choice1Dest: 0,
            choice2: "Exit", choice2Dest: 6),
        Story(title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: "Restart", choice1Dest: 0,
            choice2: "Exit", choice2Dest: 6),
        Story(title: "What? Such a cop-out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: "Restart", choice1Dest: 0,
            choice2: "Exit", choice2Dest: 6),
        Story(title: "The End.",
        choice1: "See you again!", choice1Dest: 6,
        choice2: "Please close the app.", choice2Dest: 6)
    ]
    var index = 0
    
    func getStoryTitle() -> String {
        return stories[index].title
    }
    func getStoryChoice1() -> String {
        return stories[index].choice1
    }
    func getStoryChoice2() -> String {
        return stories[index].choice2
    }
    mutating func nextStory(userChoice: String) {
        switch userChoice {
        case stories[index].choice1:
            index = stories[index].choice1Dest
        case stories[index].choice2:
            index = stories[index].choice2Dest
        default:
            index = 0
        }
    }
}
