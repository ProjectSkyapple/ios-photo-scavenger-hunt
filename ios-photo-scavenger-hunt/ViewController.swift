//
//  ViewController.swift
//  ios-photo-scavenger-hunt
//
//  Created by Aaron Jacob on 3/21/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let defaultTasks: [Task] = Task.myTasks
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as? TaskCell

        cell!.configure(with: defaultTasks[indexPath.row])

        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            
            tableView.deselectRow(at: selectedIndexPath, animated: true)
            tableView.reloadData()
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsViewController = segue.destination as? DetailsViewController, let selectedIndexPath = tableView.indexPathForSelectedRow {
            
            detailsViewController.selectedTaskForDisplay = defaultTasks[selectedIndexPath.row]
            
        }
    }

}

