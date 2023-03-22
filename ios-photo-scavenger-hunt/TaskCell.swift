//
//  TaskCell.swift
//  ios-photo-scavenger-hunt
//
//  Created by Aaron Jacob on 3/21/23.
//

import UIKit

class TaskCell: UITableViewCell {
    @IBOutlet weak var completeIndicator: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(with task: Task) {
        completeIndicator.image = UIImage(systemName: task.isComplete ? "checkmark.circle.fill" : "circle")?.withRenderingMode(.alwaysTemplate)
        nameLabel.text = task.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
