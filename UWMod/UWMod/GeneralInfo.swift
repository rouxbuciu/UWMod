//
//  GeneralInfo.swift
//  UWMod
//
//  Created by roux g. buciu on 2017-08-02.
//  Copyright © 2017 roux g. buciu. All rights reserved.
//

import UIKit

class GeneralInfo: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var outlineView: UIView!
    @IBOutlet weak var mainCardView: UIView!
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var timeLabel: RegularTextBrownLabel!
    
    //MARK: - Variables
    private var timer: Timer!
    private var counter = 10
    private var isTrackingTime = false
    
    //MARK: - View Lifecycle & Configuration
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        outlineView.layer.cornerRadius = STYLE.CornerRadius
        outlineView.backgroundColor = STYLE.Brown
        mainCardView.layer.cornerRadius = STYLE.CornerRadius
        mainCardView.backgroundColor = STYLE.Tan
        headerView.backgroundColor = STYLE.Brown
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configureCell() {
        startTimer()
        
    }
    @IBAction func info(_ sender: Any) {
        
        print("I'mA live")
    }
    
    func startTimer() {
        if !isTrackingTime {
            self.timer = Timer.scheduledTimer(timeInterval: 1,
                                              target: self,
                                              selector: #selector(GeneralInfo.updateTimerLabel),
                                              userInfo: nil,
                                              repeats: true)
            
            isTrackingTime = true
        }
    }
    
    func stopTimer() {
        self.timer.invalidate()
        self.counter = 0
        isTrackingTime = false
    }
    
    func updateTimerLabel() {
        counter += 1
        timeLabel.text = timeString(time: TimeInterval(counter))
    }
    
    func timeString(time:TimeInterval) -> String {
        
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
}