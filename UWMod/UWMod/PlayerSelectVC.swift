//
//  PlayerSelectVC.swift
//  UWMod
//
//  Created by roux g. buciu on 2017-07-28.
//  Copyright © 2017 roux g. buciu. All rights reserved.
//

import UIKit

class PlayerSelectVC: UIViewController {
    
    @IBOutlet weak var mainCard: UIView!
    @IBOutlet weak var addPlayersButton: UIButton!
    @IBOutlet weak var playerNumberLabel: UILabel!
    @IBOutlet weak var forwardButton: PMSuperButton!
    @IBOutlet weak var tableView: UITableView!
    
    let defaults = UserDefaults.standard
    let transition = CircularTransition()
    let textCellIndentifier = "PlayerNameCell"


    var savedPlayers: [String] = ["Ted Alspach"]
    var villageSize: Int = 0
    var selectedPlayers: [Player] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsMultipleSelection = true

        mainCard.layer.cornerRadius = 10
        addPlayersButton.layer.cornerRadius = 10
        
        NotificationCenter.default.addObserver(self, selector: #selector(loadPlayers),
                                               name: NSNotification.Name(rawValue: "reloadTable"),
                                               object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(emptySelectedPlayers),
                                              name: NSNotification.Name(rawValue: "returnToPlayerSelect"),
                                              object: nil)
        loadPlayers()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadPlayers()
    }
    
    
    func loadPlayers() {
        if let temp = defaults.object(forKey: PLAYERS) as? [String] {
            self.savedPlayers = temp            
        }
        tableView.reloadData()
    }
    
    func emptySelectedPlayers() {
        self.selectedPlayers.removeAll()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation and data passing
    
    @IBAction func goToSelectRolesButton(_ sender: Any) {
        createPlayers()
    }
    
    func findSelectedPlayers() -> [String] {
        var playerNames: [String] = []
        let selectedIndexPaths = tableView.indexPathsForSelectedRows
        for indexPath in selectedIndexPaths! {
            let cell = tableView.cellForRow(at: indexPath)
            let text: String = (cell?.textLabel?.text)!
            playerNames.append(text)
        }
        
        playerNames.sort()
        
        return playerNames
    }
    
    func createPlayers() {
        
        let playersToCreate: [String] = findSelectedPlayers()
        
        for playerName in playersToCreate {
            let newPlayer: Player = Player(name: playerName)
            self.selectedPlayers.append(newPlayer)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectRoleSegue" {
            let secondVC = segue.destination as! RoleSelectVC
            secondVC.players = selectedPlayers
            secondVC.transitioningDelegate = self
            secondVC.modalPresentationStyle = .custom
        } else if segue.identifier == "addPlayerSegue" {
            let secondVC = segue.destination as! AddPlayerVC
            secondVC.transitioningDelegate = self
            secondVC.modalPresentationStyle = .custom
        }
    }
}


extension PlayerSelectVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedPlayers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIndentifier, for: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = savedPlayers[row]
        cell.accessoryType = cell.isSelected ? .checkmark : .none
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        villageSize += 1
        playerNumberLabel.text = String(villageSize)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
        villageSize -= 1
        playerNumberLabel.text = String(villageSize)
    }
}

extension PlayerSelectVC: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = forwardButton.center
        transition.circleColour = UIColor.black
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = addPlayersButton.center
        transition.circleColour = UIColor.black
        return transition
    }
}
