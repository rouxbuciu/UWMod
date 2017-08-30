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
        Item(name: "How do I play?", detail: "Secret Werewolf is not a standalone game. As such, first, you'll require a set of Werewolf role cards. These can be purchased from various local board game stores, online, or you can even get fancy and make them.\n\nSecret Werewolf is a game of social deduction. There are two teams, Villagers and Werewolves, and the Moderator, who is the person that will run the game and make everything work. The Werewolves know each other, whereas the Villagers don't know the identity of anyone. The game is played over two phases: night and day.\n\nNight Phase:\nHere, the moderator will ask everyone to close their eyes and then will call special roles to wake up and perform secret actions at night - whether this be killing someone, protecting them, finding out team affiliations, etc. Listen to the Moderator carefully, and everything will go smoothly.\n\nDay Phase:\nAfter the night is done, the Moderator will wake everyone up and the fun begins. During this phase, players try and find out information about other players: Villagers want to figure out who the Werewolves are, Werewolves lie so they can make it to the night and kill more people. Because of special roles like the Seer, information may be trustworthy, or it may be false. Who will you trust? The day ends in one of two ways, an Accusation or because time has run out. Accusations work like this: someone is accused of being a Werewolf; if someone else seconds the Accusation, the accuser will then lay out, in 30 seconds, why they think the accused should be eliminated. Then the accused gets time to defend themselves. No-one else is allowed to speak during this phase. Afterwards, the Moderator will call for a vote (hands up or hands down, to be clear). If the vote passes (ties fail), that person is immediately eliminated from the game. Night Phase ensues.\n\nThe game goes on until either all Werewolves are dead (a no kill night), or until there are an equal number of werewolves and villagers.\n\nThat's the basics of Secret Werewolf. There are many homebrew variants. Look online for more details!"),
        
        Item(name: "No Kill First Night", detail: "Getting a role and being eliminated right away, without getting a chance to play a single round, is no fun for anyone. For this reason, Secret Werewolf enforces a strict no kill on the first night rule, whether by Werewolves or any other role (excluding the Phantom)."),
        
        Item(name: "Rule Clarifications", detail: "Some roles are straightforward, while other roles are a bit more... obtuse in their description, depending on which version of Werewolf you're playing, and may cause some confusion. Thankfully, Secret Werewolf includes a concise role explanation. If you need to clarify something, just click the question mark button on the specific role card, and you'll be presented with all the information you need. Alternatively, you can see all the roles in the game from the Day Menu."),
        
        Item(name: "Can I play a homebrew variant?", detail: "In order to provide the highest quality app possible, Secret Werewolf sticks to the base rules of the game. This helps both players and moderators as it leads to less uncertainty about how roles work. So homebrew variants, while great to play, are currently not supported."),
        
        Item(name: "But, but, but.....", detail: "Here's the deal. I'm aware that there's... who knows how many different ways to play Werewolf. And many of them are really great! I've tried to design the app to be as general as possible in order to support as many styles of play as possible.\n\nFor example: the lynch at the end of the day can be carried out in at least four different ways. Instead of forcing a voting system, I've allowed moderators to directly kill someone in order to account for a lynch result. Or you can end the day without a vote or kill. It's entirely up to you how you run your game. I've tried to give as much flexibility as possible, where possible.")
        ]),
    Section(name: "FAQ", items: [
        Item(name: "What order are roles presented in?", detail: "Secret Werewolf employs a system for the roles in the game that makes sure certain roles are woken up before, or after, others, as required by role interactions. For simplicitys' sake, some roles, like the werewolves, are collapsed into one card per night (if there's more than one werewolf), preceeded, or followed by, the appropriate separate roles. Other roles might wake up later or earlier than you're used to. This is to take into account all different possible combinations, so trust that there's at least a little bit of method in this madness."),
        
        Item(name: "The first night is different than how I play! What gives?!", detail: "This is a gameplay vs design philosophy issue: do you pre-assign roles first, or randomly hand out cards and write down who has what role during the first night? I've chosen my own solution to the problem after exploring a few options. Each has advantanges and each has drawbacks.\n\nThe first night, like in many Werewolf games, involves some record-keeping for the moderator. Secret Werewolf tackles the role assignment problem by waking up ALL roles (with the exception of Villagers, who will be automatically assigned after all special roles have been linked to a player) during the first night, so as to allow for role assigment by the moderator. It is strongly recommended that moderators are in the middle of the game space, in order to be able to clearly see everyone as they wake up."),
        
        Item(name: "Role/team reveal on death", detail: "There are different ways to handle eliminated players. Secret Werewolf tries to accomodate most of them in the following ways: all night role cards will remain in the virtual deck, but will have greyed out text. It is up to you if you want to call them or not. And, at the end of each phase, there is an elimination report that contains the eliminated player's role (and team, by extension). Thus, if you would like to reveal roles or teams of dead people at the end of a phase, you may. But it's always more tense if you don't and you keep calling out those roles."),
        
        Item(name: "I don't remember who did what!", detail: "Well that's what this tool is here for. Based on the roles available for each particular game, the app will remember and present all important information: from living/dead players and round length to keeping track of protected players, whether roles have used their powers or not, the different teams players are on (a werewolf that's also part of The Cult AND part of The Hivemind!), the different effects players may be under (ie. Zombie's eaten a player's brain and that player cannot vote anymore), etc.! This way you can focus on moderating well, rather than bookeeping details."),
        
        Item(name: "The bodyguard protected X, but I can still choose to eliminate them?!", detail: "That's intended! The game carries out phase effects at the end of each phase, in order to account for all possible permutations. Just enter all the information asked for in the app and everything will take care of itself."),
        
        Item(name: "A role I usually play with is not here!", detail: "In order to get the app out there for people to use, I've only included some basic roles to get you started. Just know that while you're having fun playing the game, I'm at home, hunched over my computer coding more roles in like there's a.... werewolf at my heels. Future updates will contain new roles."),
        
        Item(name: "How can I pause the daytime timer?", detail: "Simply hitting the count votes button pauses the timer. Dismissing the Count Vote popup resumes the timer."),
        
        Item(name: "Can I create my own roles?", detail: "No.\n\nThis is not a supported feature and, while it would be really nice to implement, it will very likely never make it into the app. The app has been designed around having everything bulit in so that it can track info cleanly and dynamically generate the appropriate cards."),
        
        Item(name: "What's in the future for Secret Werewolf?", detail: "I've got lots of ideas and improvements planned: more roles, incorporating automatic victory conditions, tracking stats globally (What are the most used roles? How long do 7 player games last on average?), an option to pre-assign roles, and many more ideas. If you have ideas to improve the app, I'd love to hear them so get in touch!")
        ]),
    
    Section(name: "Feedback", items: [
        Item(name: "Secret Werewolf hasn't been updated in forever!", detail: "First, I should mention that while this project is very much a labour of love, it is a side-project and, as such, may only see sporadic updates. I will do my best to try and address game-breaking bugs as soon as possible; after that, as time allows, I will endeavour to introduce new roles, features or improve the app as time goes on."),
        
        Item(name: "How do I get in touch?", detail: "Glad you asked! Your feedback and advice is important to me. Especially as you play the game and realize what would be nice to have, or what might work better. While I don't have the manpower to answer every question or comment - I do my best to read everything!\n\nHaving said that, if you have questions, comments, ideas, or just want to send praise/encouraging words, please send an e-mail to info@acmelabs.ca.")
        ])
]
