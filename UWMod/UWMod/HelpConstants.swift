//
//  HelpConstants.swift
//  UWMod
//
//  Created by roux buciu on 2017-08-03.
//  Copyright © 2017 roux g. buciu. All rights reserved.
//

import Foundation


public var helpSectionsData: [Section] = [
    Section(name: "Rules", items: [
        Item(name: "How do I play?", detail: "UWMod is NOT a standalone game or a replacement for Ultimate Werewolf. It is a tool to help moderate the wonderful boardgame Ultimate Werewolf designed by Ted Alspach. To learn to play, and, indeed, to be able to actually play the game, it is necessary to purchase the Ultimate Werewolf boardgame from your friendly local board game store... or online! But if you have this app... I have an inkling you've already got it!"),
        
        Item(name: "No Kill First Night", detail: "Getting a role and being eliminated right away, without getting a chance to play a single round, is no fun for anyone. For this reason, UWMod enforces a strict no kill on the first night rule."),
        
        Item(name: "Rule Clarifications", detail: "Some roles are straightforward, while other roles are a bit more challenging and may cause some confusion. Thankfully, UWMod includes all the role related material from the published game. If you need to clarify something, just click the question mark button on the specific role card, and you'll be presented with all the information you need."),
        
        Item(name: "Can I play a homebrew variant?", detail: "In order to provide the highest quality app possible, UWMod sticks to the base rules of the game. This helps both players and moderators as it leads to less uncertainty about how roles work. So homebrew variants, while great to play, are currently not supported."),
        
        Item(name: "But, but, but.....", detail: "Here's the deal. I'm aware that there's... who knows how many different ways to play Werewolf. And many of them are really great! I've tried to design the app to be as general as possible in order to support as many styles of play as possible.\n\nFor example: the lynch at the end of the day can be carried out in at least four different ways. Instead of forcing a voting system, I've allowed moderators to directly kill someone in order to account for a lynch result. Or you can end the day without a vote or kill. It's entirely up to you how you run your game. I've tried to give as much flexibility as possible, where possible.")
        ]),
    Section(name: "FAQ", items: [
        Item(name: "What order are roles presented in?", detail: "UWMod employs a priority system for the roles currently in the game. For simplicitys' sake, some roles, like the werewolves, are collapsed into one card per night, preceeded, or followed by, the appropriate separate roles. Other roles might wake up later or earlier than you're used to. This is to take into account all different possible combinations, so trust that there's at least a little bit of method in this madness."),
        
        Item(name: "The first night is different! What gives?!", detail: "This is a gameplay vs design philosophy issue: do you pre-assign roles first, or track assignments during the first night? I've chosen my own solution to the problem after exploring a few options. Each has advantanges and each has drawbacks. In the future, I may implement an option for assignment... but that's not currently very high on the priority list.\n\nSo, the first night, like in many Ultimate Werewolf games, involves some record-keeping for the moderator. UWMod tackles the role assignment problem by waking up ALL roles (with the exception of Villagers, who will be automatically assigned after all special roles have been linked to a player) during the first night, so as to allow for role assigment by the moderator. It is strongly recommended that moderators are in the middle of the game, in order to be able to clearly see everyone as they wake up."),
        
        Item(name: "Role/team reveal", detail: "There are different ways to handle killed off people. UWMod tries to accomodate most of them in the following ways: all night role cards will remain in the virtual deck, but will have greyed out text. It is up to you if you want to call them or not. And, at the end of each phase, there is an elimination report that contains player role (and team, by extension). Thus, if you would like to reveal roles or teams of dead people at the end of a phase, you may. But it's always more tense if you don't and you keep calling out those roles."),
        
        Item(name: "I don't remember who did what!", detail: "Well that's what this tool is here for. Based on the roles available for each particular game, the app will remember and present all important information: from living/dead players and round length to keeping track of protected players, whether roles have used their powers or not, the different teams players are on (a werewolf that's also part of The Cult AND part of The Blob!), the different effects players may be under (ie. Zombie's eaten a player's brain and that player cannot vote anymore), etc.! This way you can focus on moderating well, rather than bookeeping details."),
        
        Item(name: "The bodyguard protected X, but I can still choose to eliminate them?!", detail: "That's intended! The game carries out phase effects at the end of each phase, in order to account for all possible permutations. Just enter all the information asked for in the app and everything will take care of itself."),
        
        Item(name: "A role I usually play with is not here!", detail: "In order to get the app out there for people to use as fast as possible, I included a few basic roles to get you started. Just know that while you're having fun playing the game, I'm at home, hunched over my computer coding more roles in like there's a.... werewolf at my heels. I hope to release updates fairly regularly which will add new roles, features, etc."),
        
        Item(name: "Can I create my own roles?", detail: "No.\n\nThis is not a supported feature and, while it would be really nice to implement, it will very likely never make it into the app. The app has been designed around having everything bulit in so that it can track info cleanly and dynamically generate the appropriate cards."),
        Item(name: "What about Artifacts?", detail: "Coming soon. But not too soon. But coming. Soon.")
        ]),
    
    Section(name: "Feedback", items: [
        Item(name: "UWMod hasn't been updated in forever!", detail: "First, I should mention that while this project is very much a labour of love, it is a side-project and, as such, may only see sporadic updates. I will do my best to try and address game-breaking bugs as soon as possible; after that, as time allows, I will endeavour to introduce new roles, features or improve the app as time goes on."),
        
        Item(name: "How do I get in touch?", detail: "Glad you asked! Your feedback and advice is important to me. Especially as you play the game and realize what would be nice to have, or what might work better. While I don't have the manpower to answer every question or comment - I do my best to read everything!\n\nHaving said that, if you have questions, comments, ideas, or just want to send praise/encouraging words, please send an e-mail to info@acmelabs.ca.")
        ])
]
