//
//  GoalCell.swift
//  set-goals-n-get-'em-app
//
//  Created by Shreya Randive on 8/25/19.
//  Copyright © 2019 Shreya Randive. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    @IBOutlet weak var goalTxtLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(description: String, type: GoalType, goalProgress: Int) {
        self.goalTxtLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgressLbl.text = String(describing: goalProgress)
    }
}
