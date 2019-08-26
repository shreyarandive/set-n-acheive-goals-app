//
//  GoalsVC.swift
//  set-goals-n-get-'em-app
//
//  Created by Shreya Randive on 8/22/19.
//  Copyright © 2019 Shreya Randive. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.isHidden = false
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
    }
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell()}
        cell.configureCell(description: "Eat salad twice a week.", type: .shortTerm, goalProgress: 2)
        return cell
    }
}
