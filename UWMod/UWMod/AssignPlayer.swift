//
//  AssignPlayer.swift
//  UWMod
//
//  Created by roux g. buciu on 2017-08-01.
//  Copyright © 2017 roux g. buciu. All rights reserved.
//

import UIKit

class AssignPlayer: UIView {

    // MARK: - Initializers
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var assignButton: PMSuperButton!
    @IBOutlet weak var okButton: PMSuperButton!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var chosenPlayerName: String!
    var player: Player?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // MARK: - Private Helper Methods
    
    // Performs the initial setup.
    private func setupView() {
        Bundle.main.loadNibNamed("AssignPlayer", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        contentView.backgroundColor = STYLE.Tan
        
        pickerView.isHidden = true
        okButton.isHidden = true
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        chosenPlayerName = GAME.availableRoster[0]
    }
    
    @IBAction func assignButtonTapped(_ sender: Any) {
        assignButton.isEnabled = false
        assignButton.isHidden = true
        
        pickerView.isHidden = false
        okButton.isHidden = false
        
    }

    @IBAction func okButtonTapped(_ sender: Any) {
            
        let index = GAME.availableRoster.index(of: chosenPlayerName)
        GAME.availableRoster.remove(at: index!)
        GAME.assignRoles(player: player!, name: chosenPlayerName!)
        
        self.removeFromSuperview()
    }
}

extension AssignPlayer: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return GAME.availableRoster.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return GAME.availableRoster[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chosenPlayerName = GAME.availableRoster[row]
    }
}
