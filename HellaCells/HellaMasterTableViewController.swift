//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Jhantelle Belleza on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {
    
    var hellaData = [Int]()
    
    @IBOutlet weak var cellLabel: UILabel!
    
    override func viewDidLoad() {
        generateNumbers()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HellaCell", for: indexPath )
        
        cell.textLabel?.text = String(hellaData[indexPath.row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
        let hellaDetailView = segue.destination as! HellaDetailViewController
        let indexPathRow = tableView.indexPathForSelectedRow?.row
        hellaDetailView.number = hellaData[indexPathRow!]
        }
    }
    
    
    func generateNumbers() {
        for count in 1...100 {
            hellaData.append(count)
        }
    }
    
    
    
    
}
