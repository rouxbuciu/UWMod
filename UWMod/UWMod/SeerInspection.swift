//
//  SeerInspection.swift
//  UWMod
//
//  Created by roux g. buciu on 2017-08-07.
//  Copyright © 2017 roux g. buciu. All rights reserved.
//

import UIKit

class SeerInspection: UIView {

    
    // MARK: - Outlets
    
    @IBOutlet weak var contentView:         UIView!
    @IBOutlet weak var pickerView:          UIPickerView!
    
    
    // MARK: - Variables
    
    var playersToDisplay:                   [String] = []

    
    // MARK: - View Lifecycle
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        
        let bundle = Bundle(for: type(of: self))
        UINib(nibName: "SeerInspection", bundle: bundle).instantiate(withOwner: self, options: nil)
        addSubview(contentView)
        contentView.frame               = bounds
        
        contentView.backgroundColor         = STYLE.Tan
        
        playersToDisplay                    = playerAffiliations()
        
        pickerView.delegate                 = self
        pickerView.dataSource               = self
    }
    
    private func playerAffiliations() -> [String] {
        
        var playerList:                     [String] = []
        
        for player in GAME.livingActors {
            if player.isAssigned {
                
                let tempTeamAssignment: String
                if player.roleType == .WolfMan {
                    tempTeamAssignment = "Villager"
                    playerList.append("\(player.name) - \(tempTeamAssignment)")
                    
                } else if player.roleType == .Lycan {
                    tempTeamAssignment = "Werewolf"
                    playerList.append("\(player.name) - \(tempTeamAssignment)")
                    
                } else if GAME.wolfRoles.contains(player.roleType){
                    tempTeamAssignment = "Werewolf"
                    playerList.append("\(player.name) - \(tempTeamAssignment)")
                }
            }
        }
        
        playerList.sort()
        
        return playerList
    }

}

extension SeerInspection: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.playersToDisplay.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.playersToDisplay[row]
    }
}
